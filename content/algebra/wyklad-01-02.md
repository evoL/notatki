---
title: Struktury algebraiczne i grupy
---

# Struktury algebraiczne i grupy

## Struktury algebraiczne

**Działanie na zbiorze A** to funkcja \\( f: A^n \rightarrow A \\) dla pewnego \\( n \in \mathbb{N}^+ \\) zwanego _arnością_ f.
{:.def}

**Struktura algebraiczna** $$ \mathcal{A} = (A, f_1, f_2, \ldots, c_1, c_2, \ldots) $$ składa się ze zbioru $$ A $$, zwanego _uniwersum_ $$ \mathcal{A} $$ oraz z działań $$ f_1, f_2, \ldots $$ i ze stałych $$ c_1, c_2, \ldots \in A $$.
{:.def}

1. dowolny zbiór A bez funkcji i stałych
2. \\( (\mathbb{Z}, +) \\)
3. \\( (\mathbb{Z}, +, \cdot, 0) \\)
4. \\( ( P({1, 2, \ldots, n}), \cap, \cup, ^{\prime} ) \\)
5. \\( (A*, \cdot) \\) - zbiór słów nad alfabetem A z działaniem koniunkcji
{:.example}

### Inny przykład struktury algebraicznej

Niech \\( f(a,b) = a-b \\) dla \\( a, b \in \mathbb{Z} \\). Wtedy \\( f \\) jest działaniem na \\( \mathbb{Z} \\), ale nie jest działaniem na \\( \mathbb{N} \\), bo np. \\( f(1,2) = -1 \notin \mathbb{N} \\).

## Działania binarne, elementy neutralne i odwrotne, rozdzielność działań

<!-- działanie binarne -->
Niech \\( \cdot \\) będzie **działaniem binarnym** (tzn. 2-arnym) na zbiorze \\(A\\). Wtedy zamiast \\( \cdot(a,b) \\) piszemy \\( a \cdot b \\).
{:.def}

<!-- przemienność i łączność operatorów -->
1. \\( \cdot \\) jest **przemienne**, gdy \\( \forall_{a,b \in A}\ (a \cdot b = b \cdot a) \\).
2. \\( \cdot \\) jest **łączne**, gdy \\( \forall_{a,b,c \in A}\ ((a \cdot b) \cdot c = a \cdot (b \cdot c)) \\).

<!-- elementy neutralne -->
1. \\( e \in A \\) jest **lewostronnym elementem neutralnym**, gdy \\( \forall_{a \in A}\ (e \cdot a = a) \\).
2. \\( e \in A \\) jest **prawostronnym elementem neutralnym**, gdy \\( \forall_{a \in A}\ (a \cdot e = a) \\).
3. \\( e \in A \\) jest **elementem neutralnym**, gdy \\( \forall_{a \in A}\ (e \cdot a = a \cdot e = a) \\).  
**UWAGA:** Zawsze istnieje co najwyżej jeden element neutralny.
{:.def}

<!-- elementy odwrotne -->
1. Załóżmy, że e jest elementem neutralnym. Wtedy b jest **lewostronnym elementem odwrotnym** do e, gdy \\( b \cdot a = e \\).
2. Załóżmy, że e jest elementem neutralnym. Wtedy b jest **prawostronnym elementem odwrotnym** do e, gdy \\( a \cdot b = e \\).
3. b jest **elementem odwrotnym**, gdy zachodzą oba powiższe przypadki.
{:.def}

<!-- rozdzielność działań -->
Działanie + jest **rozdzielne** względem \\(\cdot\\) na A, gdy \\( \forall_{a,b,c \in A} (a \cdot (b+c) = a \cdot b + a \cdot c\ \wedge\ (a+b) \cdot c = a \cdot c + b \cdot c) \\).
{:.def} 

<!-- fakty -->
1. Jeżeli istnieje lewostronny element neutralny \\( e_L \\) i prawostronny element neutralny \\( e_P \\), to \\( e_L = e_P \\).
{:.fact}