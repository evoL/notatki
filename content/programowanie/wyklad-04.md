---
title: Negacje i optymalizacje w Prologu
---

# Negacje i optymalizacje w Prologu

## Negacje?

Mamy sobie predykat `\+ / 1`. Działa on tak:

- `\+(c)` powodzi się, jeżeli `c` zawiedzie
- zawiedzie, jeśli `c` się powiedzie

Jak widać, `\+` działa jak najnormalniejsza negacja. Ale żeby to działało, to wymagany jest pewien mechanizm, którego jeszcze nie było.

### Mechanizm
Zaprezentujemy go na przykładzie. Weźmy predykat `p(c)`, który doda na listę celów dwa razy `c`. Okazuje się, że na liście celów może pojawić się właściwie cokolwiek.

Jeżeli zdefiniujemy `p(X) :- X, X`, to wszystko będzie działać.
Biorąc pod uwagę to, że Prolog ma predykat `call / 1`, który wywołuje cel podany mu jako parametr, można też zdefiniować `p` jako `p(X) :- call(X), call(X)`.

### Kolejne rozszerzenie!
>     =.. / 2

Ten predykat pozwala właściwie zbudować strukturę z kawałków. Jeżeli napisać `X =.. [write, a]`, to staje się cud - Prolog _sam_ buduje sobie strukturę `write` z jednym argumentem `a`.

    #!prolog
    ?- X =.. [write, a].
    X = write(a)

### Predykat map

    #!prolog
    map(f, [e1, e2, ..., en]) -> [f(e1), ..., f(en)]

W Prologu nie ma jednak funkcji, więc zapisalibyśmy:

> `map(P, [e1, ..., en], [e1', ..., en'])` jest spełnialny wtw, gdy `p(e1, e1'), p(e2, e2'), ..., p(en, en')`

Spróbujemy go zdefiniować.

    #!prolog
    map(_, [], []).
    map(P, [H1|T1], [H2|T2]) :-
        C =.. [P, H1, H2],      % te dwie linie załatwiłoby call(P, H1, H2)
        C,
        map(P, T1, T2).

Używa się tego tak:

- jest jakiś predykat, np. `q(N,M) :- M is 2*N`
- `?- map(q, [1,2,3], X).`

### Protipy dotyczące wywoływania predykatów

- Myślałeś, że `abc (1,2)` to to samo, co `abc(1,2)`? **Nieprawda!** Pierwsze wywołuje `abc / 1` z argumentem będącym krotką `(1,2)`.
- Można zapisać `+(1,2)` i `1 + 2`. Ale z tego samego powodu, co powyżej, jakby napisać `1 +(2 + 3)`, to rypnie.

### Wracając do negacji

`\+` jest zdefiniowany jako operator prefiksowy, dlatego można opuszczać nawiasy.

Definicja:

    #!prolog
    \+ C :-
        C, !,
        fail.
    \+ _. 

Rozważmy dwa przypadki działania.

    |   C powiedzie się   |     C zawiedzie    |
    |---------------------|--------------------|
    |          \+ C       |         \+ C       |
    |       /        X    |     /          \   |
    |     C, !, fail      |  C, !, fail    :)  |
    |    /  ...  X        |  |                 |
    |   !, fail           | :(                 |
    |   |                 |                    |
    | fail                |                    |

Działa, **ALE!** Co się dzieje, jeśli zapytamy Prologa o `p(X,Y)`? Wtedy Prolog myśli, że zadaliśmy pytanie $$ \exists_{X,Y} $$ $$ p(X,Y) $$.

Trzeba pamiętać, że przy zapytaniu `\+ p(X,Y)` Prolog myśli $$ \neg \exists_{X,Y} $$ $$ p(X,Y) $$.

## Zaglądanie do brzuszka

Jak napisać taki predykat:

    var(X) - powiedzie się, jeśli w chwili wywołania X nadal jest nieukonkretnioną zmienną
           - zawiedzie wpp

Spróbujmy tak:

    #!prolog
    var(X) :-
        X = bardzodlugiatomktorynapewnoniewystapiwprogramieboktobylbytakiglupizebytakieatomyrobic

To jednak jest głupi pomysł, bo ktoś mógłby zrobić taki atom i by rypło.

Spróbujmy więc zrobić to od drugiej strony.

    #!prolog
    nonvar(X) :- (\+ X = a -> true; \+ X = b).

Jak się zunifikuje z dwoma różnymi atomami, to raczej to musi być zmienna. Dalej już z górki.
    

    #!prolog
    var(X) :-
        \+ nonvar(X).

## O kłopotach z rekurencją

    #!prolog
    length([], 0).
    length([_|T], N) :-
        length(T, M),
        N is M+1.

Przy wywołaniu `length([1,2,...,n], N)` po n krokach będziemy mieli listę n celów typu `N is M+1`. Jak sobie z tym dać radę?

    #!prolog
    length([], M, M).
    length([_|T], M, N) :-
        M1 is M+1,
        length(T, M1, N).

Dlaczego to będzie szybsze? Zobaczmy, jak by to wyglądało w C.

    #!c
    int length(struct list* ptr, int m) {
        if (ptr == NULL) return m;
        return length(ptr->next, m+1);
    }

Okazuje się, że można tutaj zrobić optymalizację polegającą na niebudowaniu całego stosu wywołań rekurencyjnych, czyli _eliminację rekursji ogonowej_. W efekcie skompiluje się zwykły while.

## Prolog optymalizuje

Prolog czasami wykminia, że daje czasem odcięcia gdzie ich nie ma, żeby było szybciej.

_(długo długo nic)_

## Kolejki!

    #!prolog
    put(X-[E|Z], E, X-Z).
    get([E|X]-Z, E, X-Z).
    empty(X) :- var(X), !, X=A-A.
    empty(X-Y) :- X==Y.