---
title: Grupy permutacji - ciąg dalszy
---

# Grupy permutacji - ciąg dalszy

## Cykle i transpozycje

<!-- Definicja -->
1. $$ f \in S_{n} $$ jest **cyklem k-wyrazowym**, gdy istnieją parami różne $$ a_1,\ a_2,\ ...,\ a_k \in \{1,2,3,...,n\} $$ takie, że $$ f(a_{1}) = a_{2},\ f(a_{2})=a_{3},\ ...,\ f(a_{k+1})=a_{k},\ f(a_{k})=a_{1} $$ oraz $$ f(a)=a $$ dla $$ a \in \{1,2,3,...n\} \backslash \{a_{1},a_{2},...,a_{k} \} $$.  
Taki cykl zapisujemy jako: ($$a_1,a_2,a_3,...,a_k$$).
2. Cykl dwuwyrazowy nazywamy **transpozycją**, czyli transpozycje to cykle postaci ($$a_1,a_2$$), gdzie $$a_1 \neq a_2$$ oraz $$a_1, a_2 \in \{1,2,3,...,k\}$$.
3. Cykle ($$ a_1,...,a_{k_{1}} $$) i ($$ b_1,...,b_{k_{2}} $$) są **rozłączne**, gdy $$ (a_1,...,a_{k_{1}} ) \cap ( b_1,...,b_{k_{2}} )=\emptyset$$, tzn. $$\forall_{i \in \{ 1,2,3,...,k_1 \} }, \forall_{j \in \{ 1,2,3,...,k_2\}}\ a_i \neq b_j $$.
{:.def}

<!-- Fakt -->
1. Jeśli grupa $$S_i$$ jest przemienna, to $$ S_i \cong (Z_i,+_i). $$  *(sprawdzić)*
2. Grupy $$S_n$$ dla n>2 są nieprzemienne.
3. Cykle rozłączne są przemienne.
{:.fact}

## Permutacje

<!-- Twierdzenie -->
1. Każda permutacja zapisuje się jednoznacznie (z dokładnością do kolejności) jako złożenia cykli rozłącznych.
2. Każda permutacja zapisuje się jako złożenie transpozycji (niekoniecznie rozłącznych), ale takie przedstawienie nie jest jednoznaczne.
3. Każda permutacja jest złożeniem nieparzystej liczby transpozycji wyrazów sąsiednich, a więc każda permutacja jest złożeniem pewnej liczby transpozycji wyrazów sąsiednich.
{:.theorem}

<!-- Fakt -->
<div class="fact" markdown="1">
W grupie $$S_n$$:

1. cykl k-wyrazowy jest rzędu k.
2. rząd dowolnej permutacji jest najmniejszą wspólną wielokrotnością rzędów cykli z rozkładu na iloczyn cykli rozłącznych.

Jeśli cykle rozłączne są przemienne to $$ f^{k} = ( c_1 \circ c_2 \circ \ldots \circ c_i )^{k} = c_{1}^{k} \circ c_{2}^{k} \circ \ldots \circ c_{i}^{k} $$.
</div>

<!-- Definicja -->
<div class="def" markdown="1">	
Weźmy dowolne $$S_n$$. Wtedy:

1. Elementy $$ f(i) $$ i $$ f(j) $$ dla \\( i < j \\) tworzą **inwersję** w permutacji, gdy $$ f(i) > f(j) $$.
2. $$f$$ jest parzysta, gdy ma parzystą ilość inwersji
3. $$f$$ jest nieparzysta, gdy ma nieparzystą ilość inwersji

W związku z tym możemy zdefiniować znak permutacji `sgn(f) = f jest parzysta ? 1 : -1`.

</div>

<!-- Lemat -->
Niech $$f$$ będzie permutacją należącą do $$S_n$$, a $$t$$ transpozycją należącą do $$S_n$$. Wtedy $$ sgn(f) = -sgn(f \circ t) $$.
{:.lemma}

<!-- Lemat -->
Niech $$f$$ będzie funkcją należącą do $$S_n$$. $$f$$ jest parzysta wtedy i tylko wtedy, gdy w dowolnych rozkładzie $$f$$ na iloczyn transpozycji występuje parzysta ilość wyników.
{:.lemma}

<!-- Fakt -->
1. $$ sgn: S_n \rightarrow ( \{ -1, 1 \}, \circ ) $$ jest homomorfizmem, tzn. $$ sgn(f \circ g) = sgn(f) \circ g $$.
2. \$$ sgn(f^{-1}) = sgn(f) $$
{:.fact}

<!-- Twierdzenie -->
Zbiór permutacji parzystych stanowi podgrupę $$S_n$$ oznaczoną przez $$A_n$$.
{:.theorem}

<!-- Twierdzenie Cayley'a -->
<div class="theorem" markdown="1">
**Twierdzenie Cayley'a**  
Każda podgrupa rzędu n jest izomorficzna z pewną podgrupą grupy $$S_n$$.
</div>

## Warstwy

<!-- Definicja -->
<div class="def" markdown="1">
Niech $$X,Y \subset G$$, gdzie $$g$$ jest grupą. Możemy zdefiniować:

1. \$$X*Y = \{ x*y\ :\ x \in X,\ y \in Y  \}$$
2. \$$a*Y=\{a\}*Y=\{ a*y:\ y \in Y \}$$
3. \$$Y*b=Y*\{b\}=\{ y*b:\ y \in Y \}$$

</div>

<!-- Definicja -->
<div class="def" markdown="1">
Niech $$H \leq G$$ i G jest grupą. Wtedy:

1. **Warstwy prawostronne H** to zbiory $$ H*g $$, gdzie $$ g \in G $$, czyli $$ H * g = \{ h*g\ :\ h \in H \} $$.
2. **Warstwy lewostronne H** to zbiory $$ g*H $$, gdzie $$ g \in G $$, czyli $$ g * H = \{ g*h\ :\ h \in H \} $$.

</div>