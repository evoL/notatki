---
title: Definicje i listy w Prologu
---

# Definicje i listy w Prologu #

W rachunku predykatów I rzędu były _termy_, no i w Prologu też są. Początkowo używaliśmy prostych termów czyli _atomów_. Wychodzi na to, że _funktory_ też są termami.

Przykład definicji człowieka z tablicy:

1. `adam` jest człowiekiem
2. `ewa` jest człowiekiem
3. jeżeli `c1` i `c2` są ludźmi, zaś `n` - liczbą naturalną, to `dziecko(n,c1,c2)` jest człowiekiem
4. każdego człowieka można zbudować, używając skończonej ilości powyższych reguł.

Definicja termu z rachunku predykatów:

> _(tutaj była definicja termu)_

Obie definicje są bardzo podobne do siebie. Są to definicje indukcyjne, dzięki czemu można je dobrze wyrazić w Prologu.

## Coś o definicjach ##

    adam/0, ewa/0, dziecko/3

Jednak definicja jest nieco ułomna, bo pozwala tworzyć dziwne struktury takie jak `dziecko(adam, adam, adam)`.

Inna definicja:

1. `leaf` jest drzewem
2. jeżeli `t1` i `t2` są drzewami, zaś `e` jest etykietą, to `node(t1, e, t2)` jest drzewem

Przykład drzewa:
    
      3
     / \
    5   2
       /
      1
^
    #!prolog
    leaf/0, node/3

    node(node(leaf, 5, leaf), 3, node(node(leaf, 1, leaf), 2, leaf)).

W Prologu można budować funkcje opierając się na definicji, takiej jak:

    leafcount(leaf) = 1.
    leafcount(node(t1, e, t2)) = leafcount(t1) + leafcount(t2).

## Listy ##
Listę można zdefiniować indukcyjnie:

1. lista pusta `[]` jest listą
2. jeżeli `l` jest listą, zaś `e` - elementem, to `.(e, l)` jest listą

Jak teraz zrobić listę, zawierającą np. 7, 13, 28? `.(7, .(13, .(28, [])))`

Listy można przedstawić w postaci drzew:

      .
     / \
    7   .
       / \
      a   .
         / \
      jola []

Jako, że Prolog jest fajny, to można listę też zapisać jak w cywilizowanym języku: `[s1, ..., sn]`. Parser zamienia to potem na `.(s1, .(s2, ..., .(sn, [])...))`.

Jeżeli zamiast `[]` na końcu listy mamy jakiś term `t` (czyli mamy `.(s1, .(s2, ..., .(sn, t)...))`), to możemy zapisać `[s1, s2, ..., sn | t]`.

Zatem `[X|Y]` oznacza `.(X,Y)`, czyli

>       .
>      / \
>     X   Y

## Unifikacja list ##
Można łatwo zdefiniować (infiksowo) predykat unifikujący. On jest w standardzie, ale można to zrobić samemu:
    
    #!prolog
    =/2
    X = X.   % albo =(X, X)

Czy można zrobić coś takiego? `X1 = [1,2,3], X1 = [H|T]`

Jasne, łatwo się to robi, patrząc na listy jako drzewa. Unifikacja daje takie podstawienie: `X1 / [1,2,3], H / 1, T / [2,3]`.

Inny przykład: `[_,X,_|Y] = [X,1,X,2,X,3]]`. Wynik: `X / 1, Y / [2,1,3]`. Czyli się da.

## Spinanie (konkatenacja) list
    
    #!prolog
    [1,2,3] + [4,5,6] -> [1,2,3,4,5,6]

W Prologu nie można myśleć proceduralnie, bo się wszystko rypnie. Zamiast tego stawia się pytania.

    #!prolog
    append/3

    ?- append([1,2,3], [4,5,6], [1,2,3,4,5,6]).
    true.

    ?- append([1], [2], [2,1]).
    false.

    ?- append([1], [2], X). % Czy istnieje lista X będąca wynikiem konkatenacji [1] i [2]?
    X = [1,2].

Fajne jest to, że Prolog wygeneruje nam jakie wyniki tylko potrzebujemy.
    
    #!prolog
    ?- append(X, Y, [1,2,3]).
    X=[], Y=[1,2,3] ;
    X=[1], Y=[2,3] ;
    X=[1,2], Y=[3] ;
    X=[1,2,3], Y=[].

Da się nawet zrobić taki myk:

    #!prolog
    ?- append(X, Y, Z).    % ło jezu
    X=[], Y=Y1, Z=[Y1] ;
    X=[H1], Y=Y2, Z=[H1 | Y2] ;
    X=[H1, H2], Y=Y3, Z=[H1, H2 | Y3] ;
    ...

Spróbujemy zdefiniować indukcyjnie predykat `append`. Jeżeli nie wiemy, względem której zmiennej poprowadzić indukcję, zróbmy to względem pierwszej, powinno być git.

1. `append([], X, X).` Lista pusta połączona z czymkolwiek jest czymkolwiek.
2. `append([H|T], X, [H|S]) :- append(T, X, S)`

_(przykład: `append(X, Y, [1,2,3])` i drzewo)_

## Prolog móżdży nad pochodnymi
Mamy taką definicję:

1. liczba jest wyrażeniem `liczba/1`
2. zmienna jest wyrażeniem `zmienna/1`
3. jeśli `e1` i `e2` są wyrażeniami, to `e1 + e2`, `e1 * e2`, ... są wyrażeniami. (`+/2, */2`)

Zatem wyrażenie `x*x + 2*x + 1` można zapisać tak:
    
    #!prolog
    zmienna(x) * zmienna(x) + liczba(2) * zmienna(x) + liczba(1)

Zróbmy sobie predykat liczący pochodną!
    
    #!prolog
    pochodna/3

    pochodna(liczba(_), _, liczba(0)).
    pochodna(zmienna(X), X, liczba(1)).
    pochodna(zmienna(X), Y, liczba(0)) :- X \= Y.
    pochodna(E1+E2, X, P1+P2) :-
        pochodna(E1, X, P1),
        pochodna(E2, X, P2).
    pochodna(E1*E2, X, P1*E2+E1*P2) :-
        pochodna(E1, X, P1),
        pochodna(E2, X, P2).

I to niby działa.

    #!prolog
    ?- pochodna(E, x, zmienna(x)*zmienna(x) + liczba(2)).
    false.

Całki z tego nie policzymy, bo _(tutaj TWI zasypał salę słowotokiem)_.

## Odnośnie słowotoku
Dobrym przykładem jest predykat `reverse/2`. Zdefiniujmy go:

    #!prolog
    reverse([], []).
    reverse([H,T], R) :- 
        reverse(T, S),
        append(S, [H], R).

Wygląda na to, że to działa i jest fajnie. **ALE TAK NIE JEST!**

Zrobimy sobie listę 10k elementów, odpalimy `reverse` i potem będziemy musieli Prologa zabić, bo się będzie zajeżdżał.

Okazuje się, że `reverse` jest złożoności $$ O(n^2) $$, bo `append` działa w czasie n-1 dla n elementów.

Warto zauważyć, że lista to tak naprawdę stos, tylko narysowany poziomo. Zatem odwrócenie to może być proste przełożenie elementów z jednej listy na drugą.

Żeby tego dokonać, zdefinuijemy sobie `reverse/3`, który będzie ogólniejszym predykatem mówiącym, że lista wynikowa Z to odwrócona lista X połączona z listą Y.

    #!prolog
    reverse([], R, R).
    reverse([H|T], S, R) :- reverse(T, [H|S], R).

`reverse/2` jest zatem szczególnym przypadkiem, gdy Y jest pustą listą.

    #!prolog
    reverse(X, Z) :- reverse(X, [], Z).

**ALE ON TEŻ JEST ZŁY!** _(mimo że poniekąd działa)_

W trakcie rysowania drzewa wywołań dla `reverse(X, [1,2])` widać, że Prolog twardo po nawrocie będzie próbował generować coraz dłuższe listy w nieskończoność.
Dlatego należy wtedy robić `reverse([1,2], X)`.

Przyjmijmy, że jako `-` oznaczymy nieukonkretnioną zmienną, a jako `+` - zamkniętą strukturę.
Wtedy jako `?` oznaczymy `-`, `+` i wszystkie struktury pomiędzy.
Tych znaczków używa się w ustalaniu _trybu wywołania predykatu_.

Dla `reverse` wygląda to tak: `reverse(?, -)`.

## Sprawdzanie czy element należy do listy

    #!prolog
    member(5, [1,2,3]) -> false
    member(5, [1,3,5]) -> true

Zdefiniujmy to!
    
    #!prolog
    member(E, [E|_]).
    member(E, [_|T]) :- member(E, T).

