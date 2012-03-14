---
title: Wykład 6
---

# Wykład 6

## Wyrażenia (składnia abstrakcyjna)

1. Wyrażenia atomowe są wyrażeniami.
    - stałe
    - zmienne
2. Para złożona z operatora i ciągu wyrażeń jest wyrażeniem.
    - operatory

Liczba argumentów _(arność)_ operatora to długość ciągu argumentów tego operatora.

Jeżeli określimy stałe, zmienne i operatory, mamy konkretny język wyrażeń, np.

> - stałe: liczby całkowite, nazwy komórek pamięci
> - operatory: `<`, `while`, `:=`, `;`

## Składnia konkretna

Chociażby:

    while x>0 do
        y:= 2*y;
        x:= x-1;
    done

lub

    2 * 3 + 5

W trakcie czytania takiego napisu często pomija się białe znaki, inaczej produkcja byłaby skomplikowana. W każdym miejscu, gdzie może wystąpić spacja musiałbyby być symbol nieterminalny oznaczający spacje.

Czytanie składni konkretnej polega na dzielenie na _tokeny_, które tworzą **strukturę leksykalną**, np.:

- stałe - literały
- zmienne - identyfikatory
- operatory - `+`, `-`, `*`, `//`, `%`
- znaki przestankowe - `(`, `,`, `)`
- białe znaki

Napis `21◡+◡5◡*◡◡71` może zostać przetworzony na takie coś:
    
    literał całkowitoliczbowy 21
    operator +
    literał c. 5
    operator *
    literał c. 71

Konwersja składni konkretnej do struktury leksykalnej jest przeprowadzana przez **lekser**. Ona zaś jest konwertowana na składnię abstrakcyjną przez **parser**.

Może być tak, że wpiszemy coś, co jest gramatycznie poprawne, lecz nie ma sensu. Wtedy lekser zrobi strukturę leksykalną, a parser ją odrzuci.

Może być jednak tak, że jedna gramatyka może reprezentować kilka składni abstracyjnych.

### Przykład składni abstrakcyjnej wyrażeń

- stałe - liczby naturalne
- zmienne
- operatory - `+`, `-`, `*`, `//`, `%`, `^` - binarne

Semantyka: liczby całkowite

Wymyślmy teraz jakąś fajną notację do zapisywania tych wyrażeń. Tyle, że jeszcze nie wiemy, co np. takie `2+3*5` znaczy. Dlatego wprowadzamy umowę społeczną, że niektóre operatory _wiążą_ bardziej niż inne. Tak właściwie robimy porządek częściowy na operatorach.

Określmy, że `+` i `-` wiążą najsłabiej, `*`, `//`, `%` mocniej, a `^` najmocniej.

To jednak nie wystarczy, bo dalej nie wiemy jak się zachować dla takich wyrażeń jak `1-0-1`. Otóż należy dodatkowo wprowadzić _kierunek łączności_, który przyporządkujemy grupom o określonym priorytecie. Jeżeli np. operator jest łączny w lewo, to uznaje, że wyższy priorytet ma ten po lewej.

Określmy, że wszystkie nasze operatory wiążą w lewo oprócz potęgowania, które wiąże w prawo.

Biorąc to pod uwagę, funkcja wypisująca _(unparsing)_ dla notacji infiksowej wyglądałaby tak:

    - dla stałych - wypisz literał całkowitoliczbowy
    - dla zmiennych - wypisz identyfikator
    - dla wyrażeń złożonych z operatora . i dwóch argumentów e1 i e2:
        - jeśli priorytet operatora głównego w e1 jest mniejszy albo jest równy i wiąże w lewo niż .
            wypisz (, wypisz e1, wypisz )
        w przeciwnym wypadku wypisz e1
        
        - wypisz operator .

        - jeśli priorytet operatora głównego w e2 jest mniejszy albo jest równy i wiąże w prawo niż .
            wypisz (, wypisz e2, wypisz )
        w przeciwnym wypadku wypisz e2

Alternatywą byłoby wypisywanie nawiasów zawsze, tylko po co.

Można też użyć innej notacji, np. prefiksowej.

    - dla wyrażeń złożonych z operatora . i dwóch argumentów e1 i e2:
        - wypisz operator .
        - wypisz e1
        - wypisz e2

    + 2 * 3 5

Albo postfiksowej.

    - dla wyrażeń złożonych z operatora . i dwóch argumentów e1 i e2:
        - wypisz e1
        - wypisz e2
        - wypisz operator .

    2 3 5 * +

## Zastosowanie w Prologu

    ?- op(700, xfy, +).

Pierwszy parametr to priorytet (0-1200), drugi oznacza łączność (opisana niżej), trzeci to atom oznaczający operator.

Łączność:

- `xfx` - nie może wystąpić ponownie po obu stronach wyrażenia
- `xfy` - nie może wystąpić ponownie po lewej stronie wyrażenia 
- `yfx` - nie może wystąpić ponownie po prawej stronie wyrażenia
- `yfy` - może wystąpić ponownie po obu stronach wyrażenia

## Przykład gramatyki dla operatorów

Ei - wyrażenie, w którym operator główny nie otoczony nawiasami ma priorytet >= i

    E1 - wszystkie wyrażenia
    E4 -> liczba | (E1)
    E3 -> E4 | E4 ^ E3
    E2 -> E3 | E2 * E3
    E1 -> E2 | E1 + E2

A więc dla priorytetu i mamy:

    xfx    Ei -> Ei+1 | Ei+1 f Ei+1
    yfx    Ei -> Ei+1 | Ei f Ei+1
    xfy    Ei -> Ei+1 | Ei+1 f Ei
    yfy    Ei -> Ei+1 | Ei f Ei

Dzięki temu możemy mieć gramatyki, które są jednoznaczne.

