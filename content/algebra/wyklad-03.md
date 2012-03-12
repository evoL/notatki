---
title: Grupy permutacji - ciąg dalszy
---

**Definicja:**

	I. $$ f\inS_{n} $$ jest cyklem k-wyrazowym, gdy istnieją parami różne $$ a_1,\ a_2,\ ...,\ a_k\ \in \{1,2,3,...,n\} $$ takie, że $$ f\(a_{1}\) = a_{2},\ f\(a_{2}\)=a_{3},\ ...,\ f\(a_{k+1}\)=a_{a},\ f\(a_{k}\)=a_{1}.$$ oraz f(a)=a dla a$$\in$${1,2,3,...n}\{$$a_{1},a_{2},...,a_{k}$$}. Taki cykl zapisujemy jako: ($$a_1,a_2,a_3,...,a_k$$).
	II. Cykl dwuwyrazowy nazywamy transpozycją, czyli transpozycje to cykle postaci ($$a_1,a_2$$), gdzie $$a_1 \neq a_2$$ oraz $$a_1, a_2, \in \{1,2,3,...,k\}$$.
	III.Cykle ($$ a_1,...,a_{k_{1}} $$) i ($$ b_1,...,b_{k_{2}} $$) są rozłączne, gdy 
	$$ \(a_1,...,a_{k_{1}} \) \bigcap \( b_1,...,b_{k_{2}} \)=\oslash$$, tzn. $$\forall_{i \in \{ 1,2,3,...,k_1 \} }, \forall_{j \in \{ 1,2,3,...,k_2\}}\ a_i \neq b_j $$.

**Fakt:**
	
	I. Jeśli grupa $$S_i$$ jest przemienna, to $$ S_i \cong (Z_i,+_i). $$ *sprawdzic*
	II. Grupy $$S_n$$ dla n>2 są nieprzemienne.
	III. Cykle rozłączne są przemienne.

**Twierdzenie:**

	I. Każda permutacja zapisuje się jednoznacznie ( z dokładnością do kolejności ) jako złożenia cykli rozłącznych.
	II. Każda permutacja zapisuje się jako złożenie transpozycji (niekoniecznie rozłącznych), ale takie przedstawienie nie jest jednoznaczne.
	III. Kazda permutacja jest złożeniem nieparzystej liczby transpozycji wyrazów sąsiednich, a więc każda permutacja jest złożeniem pewnej liczby transpozycji wyrazów sąsiednich.

**Fakt:**

	W grupie $$S_n$$:
	I. cykl k=wyrazowy jest rzędu k.
	II. rząd dowolnej permutacji jest najmniejszą wspólną wielokrotnością rzędów cykli z rozkładu na iloczyn cykli rozłącznych.

	Jeśli cykle rozłączne są przemienne to $$ f^{k} = \( c_1 \circ c_2 \circ c_i \)^{k} = c_{1}^{k} \circ c_{2}^{k} \circ c_{i}^{k}

**Definicja:**
	
	Weźmy dowolne $$S_n$$. Wtedy:
	I. Elementy f(i) i f(j) dla i<j tworzą inwersję w permutacji, gdy f(i)>f(j).
	II. f jest parzysta, gdy ma parzystą ilość inwersji
	III. f jest nieparzysta,  gdy ma nieparzystą ilość inwersji
	IV. W związku z tym możemy zdefiniować znak permutacji sign(f) = f jest parzysta ? 1 : -1.

**Lemat:**

	Niech f będzie permutacją należącą do $$S_n$$, a t transpozycją należącą do $$S_n$$. Wtedy sgn(f) = -sgn(f$$\circ$$t).

**Lemat:**

	Niech f będzie funkcją należącą do $$S_n$$. f jest parzysta wtedy i tylko wtedy, gdy w dowolnych rozkładzie f na iloczyn trnaspozycji występuje parzysta ilość wyników.

**Fakt:**

	I. sgn: $$ S_n -> \( \{ -1, 1 \}, \circ \)$$ jest homomorfizmem, tzn. sgn(f$$\circ$$g) = sgn(f) $$\circ$$ g.
	II. sgn($$f^{-1}$$) = sgn(f)

**Twierdzenie:**

	Zbiór permutacji parzystych stanowi podgrupę $$S_n$$ oznaczoną przez $$A_n$$.

####Twierdzenie Cayley'a####

	Każda podgrupa rzędu n jest izomorficzna z pewną podgrupą grupy $$S_n$$.

##Znowu ogólna teoria grup##

**Definicja:**

	Niech $$X,Y \subset G$$, gdzie g jest grupą. Mozemy zdefiniować:
	a) $$X*Y = \{ x*y\ :\ x\inX,\ y\inY  \}$$
	b) $$a*Y=\{a\}*Y=\{ a*y:\ y\inY \}$$
	c) $$Y*b=Y*\{b\}=\{ y*b:\ y\inY \}$$

**Definicja:**

	Niech $$H\leqG$$ i G jest grupą. Wtedy:
	1) Warstwy prawostronne H to zbiory H*g, gdzie g$$\in$$G, czyli H * g = { h*g : h$$\in$$H }
	2) Warstwy prawostronne H to zbiory g*H, gdzie g$$\in$$G, czyli g * H = { g*h : h$$\in$$H }