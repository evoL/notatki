---
title: Programowanie funkcyjne
---

# Programowanie funkcyjne

## Krótkie podsumowanie długiego wstępu

Dawno temu ktoś wpadł na pomysł, że problemy można rozwiązywać definicjami rekurencyjnymi. Tak powstał Lisp. Popularność Lispa w USA była wielka, a w Europie rządził Prolog.

Te dwa języki mają to do siebie, że nie mają typów. Typy są dobre, bo pozwalają zapobiec problemów w kodzie na poziomie kompilacji. Dlatego ktoś wreszcie wpadł na pomysł, żeby zawrzeć typy w samej składni języki. Takim językiem jest SML.

Mimo to fajnie byłoby mieć czasem listy, które mają elementy różnych typów. Takie listy nazywają się **heterogenicznymi**. W Haskellu da się robić takie rzeczy.

W Prologu i w SMLu konstruktory obiektów są **gorliwe**, czyli najpierw parametry, żeby z wyników zbudować obiekt. Przeciwieństwem tego są konstruktory **leniwe**, czyli parametry są przekazywane dalej przez nazwę, a ich wartość jest pobierana (czyli jakby są wywoływane) dopiero, kiedy jest potrzebna. Niektórzy stwierdzili, że to jest dobre i
stworzyli języki **non-strict**, takie jak Miranda, czy właśnie Haskell. W tych językach nie mamy kontroli nad kolejnością wywoływania działań właśnie przez leniwe wartościowanie. Dlatego nie możemy myśleć algorytmicznie.

## OMG Haskell

Zróbmy sobie funkcję w Haskellu liczącą kwadrat liczby.

    #!haskell
    square :: Integer -> Integer
    square x = x * x

Teraz można by policzyć `square (3+4)` gorliwie i leniwie.

- gorliwie - `square 7` -> `7 * 7` -> 49
- leniwie - `(3+4) * (3+4)` -> `7 * (3+4)` ...

Haskell policzy to zwykle leniwie. Ponadto gwarantuje, że jeżeli wartość nie jest używana, to nie jest liczona, a jeżeli jest używana, to nie jest liczona dwa razy.
To znaczy, że dla definicji `const _ = 1` w wyrażeniu `const (1+2)` (1+2) nie zostanie wyliczone wcale.

## Wyrażenia

`square(3+4)` i `49` to dwa różne wyrażenie, które mają wspólną wartość w świecie abstrakcyjnym. Normalnie chcielibyśmy móc znaleźć wartość dla każdego wyrażenia.

Co jednak w przypadku np. takim?

    #!haskell
    infinity :: Integer
    infinity = 1 + infinity

W takim przypadku normalnie mielibyśmy problem. Ale Haskell dodaje jakby do każdego zbioru element, który jest zwracany przy braku wartości. Oznaczmy go jako $$\perp$$. Taki typ Bool ma w Haskellu 3 możliwe wartości: `true`, `false` i $$\perp$$. Jest w języku takie wyrażenie jak `undefined`, którego próba policzenia zakończy się błędem.

$$\perp$$ niestety komplikuje nam dowody indukcyjne, bo nagle trzeba ją uwzględniać, inaczej będzie lipa.

## Ekstensjonalność

Dwie funkcje są ekstensjonalnie równe jeśli dla tych samych argumentów dają te same wyniki. Na przykład _insertion sort_ jest równy _merge sortowi_. 

To pozwala Haskellowi np. na zastępowanie niektórych funkcji innymi, jeżeli dają ten sam wynik, a są liczone szybciej.

## Funkcje wielu parametrów

W matematyce mamy funkcje definiowane np. tak:

$$ f: A \times B \rightarrow C $$

Człowiek nazwiskiem Curry wymyślił, że funkcje można zwijać i rozwijać, czyli właściwie funkcję powyższą można zapisać jakoś tak:

$$ f: A \rightarrow (B \rightarrow C) $$

I to znaczy mniej więcej to samo. I w Haskellu robi się to właśnie w tej drugiej formie. Co więcej, możemy zdefiniować operacje zwijania i rozwijania:

    #!haskell
    curry :: ( (b,c) -> a ) -> (b -> c -> a)
    curry f b c = f(b,c)
    uncurry g(b,c) = g b c

### Ale po co to?

Weźmy funkcję `add`:

    #!haskell
    add :: Integer -> Integer -> Integer
    add x y = x+y

I jeżeli mamy funkcje `map`, która działa podobnie jak prologowy predykat `map`, to można zrobić:

    #!haskell
    map :: (a -> b) -> ([a] -> [b])

    map (add 1) [2,3,4] = [3,4,5]

## Zjazd kolejką górską z Everestu

- `` `map` `` - wtedy `map` jest infiksowy
- `\x -> x+1` - notacja lambda, oznacza funkcję pobierającą x, a zwracającą x+1
- `elem :: Eq a -> a -> [a] -> Bool` - to samo co member w Prologu  
Wtedy ``x `elem` xs`` znaczy tyle, co $$ x \in xs $$.

> _wytłumaczyć lambdy_

---

Silnię możemy zapisać tak:

    #!haskell
    silnia 0 = 1
    silnia n = n * silnia(n-1)

Możemy też zdefiniować ją przez przypadki:

    #!haskell
    silnia n
        | n < 0 = undefined
        | n == 0 = 1
        | n > 0 = n * silnia (n-1)

---

$$
\cosh x = \frac{e^x + e^{-x}}{2} = \frac{e^x + \frac{1}{e^x}}{2} = \frac{u + \frac{1}{u}}{2} (\textbf{gdzie } u = e^x) 
$$

W Haskellu:

    #!haskell
    cosh x = (exp x + exp(-x)) / 2
    cosh x = (u + 1/u)/2 where u = exp x

---

    #!haskell
    sortby :: (a -> a -> Bool) -> ([a] -> [a])

---

Klasy typów istnieją. Kod, który ma coś z nimi wspólnego:

    #!haskell
    (+) :: a -> a -> a
    (<) :: a -> a -> Bool

    (<) :: Ord a => a -> a -> Bool
    (+) :: Num a => a -> a -> a

    class Ord where             -- jakby klasa
        (<) :: a -> a -> Bool

    class Eq a => Ord a where   -- jakby podklasa (dziedziczenie)

    instance Ord Integer where  -- instancja z przeładowaniem operatora
        (<) = intleq

    intleq :: Integer -> Integer -> Bool

Można definiować swoje typy:

    #!haskell
    data Kolor = C | Z | N

    ladny :: Kolor -> Bool
    ladny C = True
    ladny _ = False
    ladny undefined = undefined

---

**Jakieś typy**  

- `[Integer]` - lista Integerów
- `(1, True) :: (Integer, Bool)` - krotka Integera i Boola

--- 

**Pierwszy i drugi element listy**

    #!haskell
    fst(x, _) = x
    snd(_, y) = y

---

**Typy definiowane rekurencyjnie**

    #!haskell
    data Nat = Zero | Succ Nat

    instance Num Nat where
        Zero + m = m
        Succ n + m = Succ (n+m)

Jak będziemy chcieli to udowodnić, to się pochlastamy, bo trzeba by zrobić indukcję po n+m. Ona działa tylko dla liczb naturalnych, a my mamy w zbiorze jeszcze $$\perp$$ i kombinacje z $$\perp$$! Tak więc lipa.

Definicja indukcyjna list:

    #!haskell
    data [a] = (:) a [a] | []

---

**Taki jakby `typedef`**

    #!haskell
    type ParaInt = (Integer, Integer)