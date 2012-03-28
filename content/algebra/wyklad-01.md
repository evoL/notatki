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
2. $$\cdot$$ - łączne, e - element neutralny, $$b_L$$ - lewostronny element odwrotny, $$b_P$$ - prawostronny element odwrotny.  
$$b_L = b_P$$, zatem $$\forall a \in A$$ istnieje co najwyżej 1 element neutralny do a.
{:.fact}

Przy czym elementów neutralnych _jednostronnych_ może być wiele (oczywiście wtedy nie ma el. neutralnych "drugostronnych")

Elementy odwrotne lewo- i prawostronne mogą być różne, ale są sobie równe, jeśli działanie jest łączne.

## Grupy

<div class="def" markdown="1">
Grupą nazywamy strukturę algebraiczną $$(G, *)$$ z jednym działaniem binarnym spełniającym:

1. $$*$$ - łączne
2. $$*$$ ma element neutralny
3. $$\forall g \in G$$ istnieje el. odwrotny $$g^{-1}$$
</div>

Grupę $$(G, *)$$ nazywamy **abelową** (przemienną), gdy $$*$$ jest przemienne.
{:.def}

### Konwencje:

- zamiast $$(G, *)$$ piszemy G
- el. neutralny jest oznaczany przez e lub 1, a el. odwrotny do a przez $$a^{-1}$$
- gdy grupa jest abelowa, używa się często notacji addytywnej:
    - $$+$$ zamiast $$*$$
    - el. neutralny: 0
    - el. odwrotny do a: -a

### Tabelka działania binarnego

Z tabelki można zobaczyć przemienność działania. Jeśli tabelka jest symetryczna względem przekątnej, to działanie jest przemienne.

| \ | **1** | **3** | **5** | **7** |
| **1** | 1 | 3 | 5 | 7 | 
| **3** | 3 | 1 | 7 | 5 |
| **5** | 5 | 7 | 1 | 3 |
| **7** | 7 | 5 | 3 | 1 |

## Prawa skreśleń

<div class="fact" markdown="1">
Niech G będzie grupą:

1. Dla $$g, h \in G\ \ $$ $$g * x = h$$ i $$y * g = h$$ ma 1 rozwiązanie
2. W G zachodzą prawa skreśleń:
    - lewostronne - $$\forall a,b,c \in G\ (a*b=a*c \Rightarrow b=c)$$
    - prawostronne - $$\forall a,b,c \in G\ (b*a=c*a \Rightarrow b=c)$$
</div>

## Homomorfizmy

<div class="def" markdown="1">
Niech $$(G, *_G)$$ i $$(H, *_H)$$ będą grupami, a $$ f: G \rightarrow H $$ pewną funkcją:

1. f jest homomorfizmem grup, gdy $$\forall a,b \in G\ ( f(a *_G b) = f(a) *_H f(b) )$$
2. f jest monomorfizmem, gdy f jest homomorfizmem 1-1
3. f jest epimorfizmem, gdy f jest homomorfizmem "na"
4. f jest izomorfizmem, gdy f jest homomorfizmem 1-1 i "na" ($$G \cong H$$)
</div>

<div class="fact" markdown="1">
Niech $$f: G \rightarrow H$$ będzie homomorfizmem. Wtedy:

1. \$$f(e_G) = e_H$$
2. \$$f(a^{-1}) = f(a)^{-1}$$
</div>