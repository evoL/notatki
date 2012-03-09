---
title: Grupy
---

###Potegowanie

**Definicja:**
	
	Niech G będzie grupą z elementem neutralnym e. Dla $$ n \in N $$ funkcję  $$ a^{n} $$ definiujemy rekurencyjnie:
	1) $$ a^{0} = e $$
	2) $$ a^{n+1} = a * a^{n}

Dla  `$$ n \in Z\backslash N \ ,\n a^{n} = (a^{-1})^{-n} $$`.

###Wlasnosci potegowania

	Dla $$n \in Z$$ zachodzą nastapujace wlasnosci:
	1) $$ a^{n+1} = a * a^{n} = a^{n} * a $$
	2) $$ a^{n-1} = a^{-1} * a^{n} = a^{n} * a^{-1}
	3) $$ a^{m+n} = a^{m} * a^{m} $$ - działa dla $$m,n \n Z $$
	4) $$ a^{m^{n}} = a^{mn} $$

**Definicja:**

	Niech G będzie grupą, a $$ g \in G $$ jej elementem:
	1) Rzędem (lub rządem jak kto woli ) elementu g nazywamy najmniejszą liczbę $$n \in N\backslash \{0 \} $$ takie, że $$ g^{n} = e $$ o ile taka liczba istanieje. W przeciwnym wypadku mówimy, że g ma rząd nieskończony.
	2) Rząd grupy G to ilość elementów w G

####Przyklad:
>	$$ G = \( Z_{6}, +_{6} \) $$

>	Wtedy: 
>	rzad(1) = 6,
>	rzad(2) = 3,
>	rzad(3) = 2,
>	rzad(4) = 3,
>	rzad(5) = 6,
>	rzad(0) = 1.

>	Rząd całej grupy twynosi 6.

**Fakt:**
	
	Każdy element grupy skończonej ma skończony rząd.
	(Tu trzeba dopisać jakieś mniej więcej uzasadnienie skąd to jest)

**Definicja:**
	
	Niech H będzie podzbiorem pewnej grupy G. Mówimy, że H jest podgrupą grupy ( G, $$\bullet$$), gdy ( H, $$\bullet$$ ) też jest grupą. Zapisujemy to wtedy $$H\leG$$.

**Fakt:**

	Jeśli G jest grupą $$H\subsetG$$, to wtedy te trzy warunki są równoważne:
	1) $$H\leG$$
	2) a) $$e_G \in H$$
	   b) $$\forall g \( g \in H \Rightarrow g^{-1} \in H  \)$$
	   c) $$\forall g,h \( g,h \n H \Rigtharrow g*h \n H  \)$$
	3) a) $$ H \neq \oslash $$
	   b) $$ \forall g,h g,h \in H \Rigtharrow g*h^{-1}\in H $$

Komentarz:
Czyli jeśli chcemy wykazać że, H jest podgrupą G, to możemy pokazać, że:
>a) element neutralny G należy do H

>b) wszystkie elementy odwrotne elementów z H należą do H

>c) H jest zamknięty na działanie ( czyli, że g $$\oplus$$ h należy do H )

lub:

>a) zbiór H nie jest pusty

>b) jeśli g i h należą do H to również wynik działania  $$g\oplush^{-1}$$ należy do H

**Fakt:**

	Niepusty podzbiór H grupy skończonej G jest podgrupą wtedy i tylko wtedy, gdy:
	$$ \forall g,h \in H \ g*h \in H $$

**Definicja:**
	
	Weźmy dowolną grupę G oraz pozdbiór $$X\subsetG$$ Najmniejszą pogrupę G zawierającą zbiór X nazwywamy podgrupą generowaną przez X i oznaczamy ją <X>.

**Fakt:**
	
	Dla każdej dowolnej grupy $$X\subsetG$$ istnieja <X> i <X> jest równe 
	$$ \bigcap \{ H \leq G | X \subset X \}$$

**Definicja:**
	
	Mówimy, że podgrupa G jest generowana przez podzbiór $$X\subsetG$$, gdy <X> = G.

**Definicja:**

	Mówimy, że grupa G jest cykliczna, gdy jest ona generowana przez jednoelementowy podzbiór {g}. Mówimy wtedy, że grupa jest generowana przez element g.

Innymi słowy grupa jest cykliczna jeśli wszystkie jej elementami są potęgami jakiegoś g (do udowodnienia).

**Fakt:**

	1) Jeśli $$ \( X \neq \oslash \) \leq G $$ to $$ <X> = \{ x_{1}^{\varepsilon_1},\ ...,\ x_{k}^{\varepsilon^{k}},\ k\inN,\ x_1,\ ...,\ X_k.\ \varepsilon_1,\ ...,\ \varepsilon_k \in \{-1,1\}  \}
	2) Jeśli H = <g> i rząd(g) jest skończony, to $$ H=\{g, g^2,\ ...,\ g^m     \}, gdzie m jest rzędem elementu g.

**Twierdzenie:**
	
	Weźmy dowolne G=<g>. Wtedy:
	1) Jeśli rząd(g) jest nieskończony, to $$ G \cong ( Z, + ) $$
	   (Czylimożna utworzyć izomorficzną z grupy G w grupę ( Z, + ) )
	2) Jeśli rząd(g) = k, to $$ G \cong ( Z_k, +_k )

No a teraz:

##Grupy permutacji##

**Definicja:**

	Permutacja zbioru X to dowolna bijekcja f: X->Y. Premutację, której najczęściej będziemy używać będzie X = {1,2,3,...,n}.

Uwagi notacyjne:
Sym(x) - zbiór wszystkich permutacji zbioru X, jest to grupa z działaniem składania.
       Dla X = {1,2,3,...,n}, $$S_n\ :=\ Sym\(x\) $$ i jest to grupa n!-elementowa.

Dana permutację $$ f\inS_{n} $$ zapisujemy jako:
>	(  1    2    3    4   ...   n   )
>
>	( g(1) f(2) f(3) f(4) ... f(n)  )

Czyli np premutacja grupy 3-elementowej  f: {1,2,3}->{3,1,2} może wyglądać tak:
>(  1    2    3  )	  *Tutaj wszedzie powinny byc nawiasy na dwie linie*
>
>(  3    1    2  )    *ale nie wiem jak takie zrobic w LaTeX-u*
>
>Wtedy f(1) = 3, f(2) = 1, f(3) = 2.

