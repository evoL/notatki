---
title: Grupy - ciąg dalszy, wstęp do grup permutacji
---

# Grupy - ciąg dalszy, wstęp do grup permutacji

## Potęgowanie

<div class="def" markdown="1">
Niech G będzie grupą z elementem neutralnym e. Dla \\( n \in \mathbb{N} \\) funkcję \\( a^{n} \\) definiujemy rekurencyjnie:

1. \\( a^{0} = e \\)
2. \\( a^{n+1} = a * a^{n} \\)

Dla \\( n \in \mathbb{Z} \backslash \mathbb{N},\ a^{n} = (a^{-1})^{-n} \\).
</div>

### Własności

Dla $$n \in Z$$ zachodzą następujące własności:

1. \\( a^{n+1} = a * a^{n} = a^{n} * a \\)
2. \\( a^{n-1} = a^{-1} * a^{n} = a^{n} * a^{-1} \\)
3. \\( a^{m+n} = a^{m} * a^{m} \\) - działa dla \\( m,n \in \mathbb{Z} \\)
4. \\( a^{m^{n}} = a^{mn} \\)

## Rząd elementu

<div class="def" markdown="1">
Niech G będzie grupą, a \\( g \in G \\) jej elementem:

1. **Rzędem** elementu g nazywamy najmniejszą liczbę \\(n \in \mathbb{N}\backslash\\{0\\} \\) takie, że \\( g^{n} = e \\), o ile taka liczba istnieje. W przeciwnym wypadku mówimy, że g ma rząd nieskończony.
2. Rząd grupy G to ilość elementów w G.
</div>

<div class="example" markdown="1">
$$ G = ( \mathbb{Z}_{6}, +_{6} ) $$

Wtedy:

	rzad(1) = 6
	rzad(2) = 3,
	rzad(3) = 2,
	rzad(4) = 3,
	rzad(5) = 6,
	rzad(0) = 1.

Rząd całej grupy wynosi 6.
</div>

Każdy element grupy skończonej ma skończony rząd.  
_(Tu trzeba dopisać jakieś mniej więcej uzasadnienie skąd to jest)_
{:.fact}

## Podgrupy

Niech H będzie podzbiorem pewnej grupy G. Mówimy, że H jest **podgrupą** grupy \\( ( G, \bullet ) \\), gdy \\( (H, \bullet) \\) też jest grupą. Zapisujemy to wtedy \\(H \leq G\\).
{:.def}

<div class="fact" markdown="1">
Jeśli G jest grupą \\( H \subset G \\), to wtedy te trzy warunki są równoważne:

1. \\( H \leq G \\)
2.  
	1. \\( e_G \in H \\)
	2. \\( \forall g\ ( g \in H \Rightarrow g^{-1} \in H ) \\)
	3. \\( \forall g,h\ ( g,h \in H \Rightarrow g*h \in H ) \\)
3.  
	1. \\( H \neq \emptyset \\)
	2. \\( \forall g,h\ g,h \in H \Rightarrow g*h^{-1}\in H \\)
</div>

### Komentarz
Czyli jeśli chcemy wykazać, że H jest podgrupą G, to możemy pokazać, że:

1. element neutralny G należy do H
2. wszystkie elementy odwrotne elementów z H należą do H
3. H jest zamknięty na działanie (czyli, że \\(g \oplus h\\) należy do H)

lub:

1. zbiór H nie jest pusty
2. jeśli g i h należą do H to również wynik działania \\( g \oplus h^{-1} \\) należy do H



Niepusty podzbiór H grupy skończonej G jest podgrupą wtedy i tylko wtedy, gdy \\( \forall_{g,h \in H} \ g*h \in H \\)
{:.fact}

Weźmy dowolną grupę G oraz podzbiór \\( X \subset G \\).  Najmniejszą podgrupę G zawierającą zbiór X nazywamy **podgrupą generowaną przez X** i oznaczamy ją \<X\>.
{:.def}

Dla każdej dowolnej grupy \\(X \subset G\\)  istnieją \<X\> i \<X\> jest równe \\( \bigcap \\{ H \leq G \mid X \subset X \\} \\).
{:.fact}
	
Mówimy, że podgrupa G jest **generowana przez podzbiór** \\( X \subset G \\), gdy \<X\> = G.
{:.def}

## Grupy cykliczne

Mówimy, że grupa G jest **cykliczna**, gdy jest ona generowana przez jednoelementowy podzbiór {g}. Mówimy wtedy, że grupa jest **generowana przez element g**.
{:.def}

Innymi słowy grupa jest cykliczna jeśli wszystkie jej elementami są potęgami jakiegoś g _(do udowodnienia)_.

1. Jeśli \\( ( X \neq \emptyset ) \leq G \\) to $$ \langle X \rangle = \{ x_{1}^{\varepsilon_1},\ \ldots,\ x_{k}^{\varepsilon_{k}}\},\ k \in N;\ x_1,\ \ldots,\ x_k \in X;\ \varepsilon_1,\ \ldots,\ \varepsilon_k \in \{-1,1\} $$.
2. Jeśli H = \<g\> i rząd(g) jest skończony, to \\( H=\\{g, g^2,\ \ldots,\ g^m \\} \\), gdzie m jest rzędem elementu g.
{:.fact}

<div class="theorem" markdown="1">	
Weźmy dowolne G=\<g\>. Wtedy:

1. Jeśli rząd(g) jest nieskończony, to \\( G \cong ( Z, + ) \\).  
   (czyli można utworzyć izomorfizm z grupy G w grupę \\( ( Z, + ) \\))
2. Jeśli rząd(g) = k, to \\( G \cong ( Z_k, +_k ) \\).
</div>

## Grupy permutacji

**Permutacja zbioru X** to dowolna bijekcja \\( f: X \rightarrow Y \\). Permutacją, której najczęściej będziemy używać będzie \\( X = \\{1,2,3,\ldots,n\\} \\).
{:.def}

**Uwagi notacyjne:**  
\\(Sym(x)\\) - zbiór wszystkich permutacji zbioru X, jest to grupa z działaniem składania.  
Dla \\( X = \\{1,2,3,\ldots,n\\} \\), \\( S_n\ :=\ Sym(x) \\) i jest to grupa n!-elementowa.

Daną permutację \\( f \in S_{n} \\) zapisujemy jako:

<script type="math/tex; mode=display">
\left(
\begin{array}{cccccc} 
	1 & 2 & 3 & 4 & \ldots & n \\
	f(1) & f(2) & f(3) & f(4) & \ldots & f(n)
\end{array}
\right)
</script>

Czyli np. permutacja grupy 3-elementowej $$ f: \{1,2,3\} \rightarrow \{3,1,2\} $$ może wyglądać tak:

<script type="math/tex; mode=display">
\left(
\begin{array}{ccc}
	1 & 2 & 3 \\
	3 & 1 & 2
\end{array}
\right)
</script>

Wtedy f(1) = 3, f(2) = 1, f(3) = 2.