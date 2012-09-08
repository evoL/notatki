---
title: Bardzo dużo sortowania
---

# Bardzo dużo sortowania

## Previously on Prog

Sortowanie jest _stabilne_, gdy nie zmienia kolejności dwóch równoważnych elementów. Tylko że w Haskellu nie ma dwóch takich samych obiektów. Dwa równoważne obiekty to tak naprawdę jeden obiekt. Dlatego w Haskellu każe sortowanie jest stabilne.

Możemy napisać sobie specyfikację sortowania:

    #!haskell
    sort :: Ord a => [a] -> [a]
    sort = head . filter monotone . perm

    perm :: [a] -> [[a]]
    monotone :: Ord a => [a] -> Bool

Spróbujmy teraz wygenerować permutacje listy przez wstawianie:

    #!haskell
    perm [] = [[]]
    -- perm (x:xs) = concatMap insert $ perm xs where
    perm (x:xs) = [ ys | zs <- perm xs, ys <- insert zs ] where
        insert [] = [[x]]
        insert us@(u:us') = (x:us) : map (u:) $ insert us'

Wszystko pięknie, tylko tutaj złożoność jest wykładnicza. Dlatego dokonamy fuzji, połączymy parę funkcji, żeby było szybciej.

    #!haskell
    -- Krok 1
    sort = head . f

    f [] = [[]]
    f (x:xs) = (concatMap insert . filter monotone) $ f xs where 
        insert [] = [[x]]
        insert us@(u:us') = (x:us) : map (u:) $ insert us'

    -- Krok 2
    sort [] = [[]]
    sort (x:xs) = (concatMap insert . filter monotone) $ sort xs where 
        insert [] = [[x]]
        insert us@(u:us')
            | x <= u    = (x:us)
            | otherwise = u : insert us'

Wyszedł insertion sort. Później 3. twierdzenie o homomorfiźmie zrobiło nam z niego merge sorta.

## Sortowanie n log n

Zróbmy sobie sortowanie o złożoności liniowo-loggarytmicznej. Żeby tego dokonać, użyjemy struktury danych, która zapewnia nam dostęp do danych o takiej właśnie złożoności.

### Drzewo binarne o wierzchołkach wewnętrznych etykietowanych wartościami typu `a`

- drzewo puste Null jest drzewem
- jeśli `l` i `r` są drzewami, zaś `x` jest elementem typu `a`, to `Fork l x r` jest drzewem
^
    #!haskell
    data Tree a = Null | Fork (Tree a) a (Tree a)

### Trochę o BST

Dla każdego wierzchołka wewnętrznego `Fork l x r` jest: każda etykieta `l` ≤ x ≤ każda etykieta `r`.

    #!haskell
    data Ord a => BST a = Null | Fork (BST a) a (BST a)

    -- Wstawianie do drzewa
    insert :: Ord a => a -> Tree a -> Tree a
    insert x Null = Fork Null x Null
    insert x (Fork l y r)
        | x <= y    = Fork (insert x l) y r
        | otherwise = Fork l y (insert x r)

    -- Konwersja drzewa do listy w porządku infiksowym
    flatten :: Tree a -> [a]
    flatten Null = []
    flatten (Fork l x r) = flatten l ++ [x] ++ flatten r

Zatem jeżeli `t :: Tree a` jest BST, to `monotone (flatten t)`.

### Właściwy algorytm!

    #!haskell
    treesort = flatten . foldr next Null

Niestety budujemy tutaj pośrednią strukturę danych, co jest złe. Jak dokonamy fuzji `flatten` i `foldr`, wyjdzie Quicksort.

Wychodzi na to, że z jednej specyfikacji, dokonując różnych magicznych przekształceń dojdziemy do każdego algorytmu sortowania.

## Wracając do drzew

Weźmy pod uwagę, że drzewo `t` jest równoważne drzewu `t'` wtedy i tylko wtedy, gdy `flatten t = flatten t'`. Okazuje się teraz, że niektóre drzewa, np. listy, można by **zbalansować** tak, żeby po obu stronach byłoby mniej więcej tyle samo wierzchołków.

Istnieją drzewa, które zapobiegają niezbalansowaniu, jak np. [drzewa czerwono-czarne](http://pl.wikipedia.org/wiki/Drzewo_czerwono-czarne). Moglibyśmy przerobić nasz konstruktor drzewa tak, żeby tworzył właśnie drzewa czerwono-czarne:

    #!haskell
    data Color = Red | Black
    data Ord a => RBTree a = Null | Fork Color (RBTree a) a (RBTree a)

    -- Wstawianie do drzewa
    insert :: Ord a => a -> RBTree a -> RBTree a
    insert x t = case ins x t of
                 Fork _ l x r -> Fork Black l x r where
        ins x Null = Fork Red Null x Null
        ins x (Fork c l y r)
            | x <= y    = Fork c (ins x l) y r
            | otherwise = Fork c l y (ins x r)

    -- Definicja drzewa
    Fork Black (Fork Red (Fork Red a x b) y c) z d = Fork Red (Fork Black a x b) y (Fork Black c z d)
    Fork Black (Fork Red a x (Fork Red b y c)) z d = Fork Red (Fork Black a x b) y (Fork Black c z d)
    ...
    ...
    Fork c l x r = Fork c l x r
