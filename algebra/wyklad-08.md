---
title: Wstęp do algebry liniowej
---

# Wstęp do algebry liniowej


##Przestrzenie liniowe
<div class="def" markdown="1">
Niech K - ciało. Strukturę algebraiczną $$ (V, =, \alpha \cdot)_{\alpha \in K} $$ nazywamy **przestrzenią liniową nad K**, gdy:

1. $$(V, +)$$ jest grupą abelową
2. \$$\forall \alpha, \beta \in K\ \ \forall v \in V\ ((\alpha + \beta) \cdot v = \alpha \cdot v + \beta \cdot v)$$
3. \$$\forall \alpha \in K\ \ \forall v, w \in V\ (\alpha \cdot (v+w) = \alpha \cdot v + \alpha \cdot w)$$
4. \$$\forall \alpha, \beta \in K\ \ \forall v \in V\ (\alpha \cdot (\beta \cdot v) = (\alpha \cdot \beta) \cdot v)$$
5. $$1 \cdot v = v$$ (gdzie 1 jest el. neutralnym dla $$\cdot$$ w ciele K)
</div>

Elementy ciała K nazywamy **skalarem**, a elementy V **wektorem**.

**UWAGA:** + oznacza dwie różne rzeczy: dodawanie w ciele K i dodawanie wektorów w V  
$$\cdot$$ też oznacza dwie rzeczy: mnożenie w ciele K i mnożenie skalarów przez wektory

**Notacja:** $$\overrightarrow{0}$$ - element neutralny w grupie (V, +)

<div class="fact" markdown="1">
V - przestrzeń liniowa nad K. Wtedy dla dowolnego przypadku $$\alpha \in K$$ i $$v \in V$$ mamy:

1. \$$0 \cdot v = \overrightarrow{0}$$
2. \$$\alpha \cdot \overrightarrow{0} = \overrightarrow{0}$$
3. \$$\alpha \cdot v = \overrightarrow{0} \Leftrightarrow \alpha = 0 \vee v = \overrightarrow{0} $$
4. $$(-1) \cdot v = -v$$ (tzn. $$(-1) \cdot v$$ jest wektorem odwrotnym do v w sensie + w V)
</div>

<div class="example" markdown="1">
1. **(Najważniejszy przykład)**  Niech K - dowolne ciało (np. $$K=\mathbb{R}$$\ lub $$K=\mathbb{C}$$)  
$$K^n = \underbrace{K \times \ldots \times K}_n = \{ (\alpha_1, \alpha_2, \ldots, \alpha_n),\ \alpha_1,\ldots, \alpha_n \in K \} $$  
Definiujemy $$+$$ na $$K^n$$:  
$$ (\alpha_1, \ldots, \alpha_n) + ( \beta_1, \ldots, \beta_n ) = ( \alpha_1 + \beta_1, \alpha_2 + \beta_2, \ldots, \alpha_n + \beta_n )$$.  
Mnożenie $$\cdot$$ :  
$$ \alpha \cdot ( \alpha_1, \alpha_2, \ldots, \alpha_n ) = ( \alpha \cdot \alpha_1, \alpha \cdot \alpha_2, \ldots, \alpha \cdot \alpha_n )$$.  
Wówczas $$( K^n, +, \alpha \cdot )_{\alpha \in K } $$ jest przestrzenią liniową nad $$K$$.  
**Interpretacja geometryczna:**  
Elementy $$K^n$$ to punkty w przestrzenie $$K^n$$ lub wektory o początku w punkcie $$(0,0,\ldots,0)$$.  
Np weźmy: $$K = \mathbb{R},\ n=2 \leadsto \mathbb{R}^2 $$:  
	![Wykres](/images/Wykres1.png)
**Dwie uwagi co do $$R^2:$$**  
1) $$+$$ w $$R^2$$ to "znane" (prawdopodobnie) dodawanie wektorów  
2) $$\cdot$$ w $$R^2$$ to "znane" mnożenie wektora przez skalar  
**I uwaga co do $$R^1$$:**
W szczególnym przypadku, gdy $$n=1 \leadsto K^1 = K $$, czyli jest to przestrzeń na samym sobą.

2. $$K$$ - dowolne ciało. Wtedy $$ ( K[x], +, \alpha \cdot )_{ \alpha \in K}$$ jest przestrzenią liniową nad $$K$$, gdzie:  
a) $$+$$ - dodawanie wielomianów  
b) $$*$$ - $$ \alpha ( a_nx^n + \ldots + a_0 ) = ( \alpha a_n x^n + \ldots \alpha a_0 ) $$

3. $$ \mathbb{R}^{\mathbb{R}}$$ - zbiór funkcji z $$\mathbb{R}$$ w $$\mathbb{R}$$.  
Definiujemy:  
a) $$+$$ na $$\mathbb{R}^{\mathbb{R}}$$: $$(f+g)(x) = f(x) + g(x)$$  
b) $$\alpha \cdot$$ (mnożenie przez skalary) na $$\mathbb{R}^{\mathbb{R}}$$ dla $$\alpha \in \mathbb{R} $$: $$(\alpha \cdot f)(x) = \alpha \cdot f(x)$$  
Wówczas $$( \mathbb{R}^{\mathbb{R}}, +, \alpha \cdot )_{\alpha \in K } $$ jest przestrzenią liniową nad $$\mathbb{R}$$.

4. Ten przykład to uogólnienie przykładu (3).  
Niech $$K$$ będzie ciałem, a $$X$$ - dowolnym zbiorem.  
Wtedy $$K^X$$ - zbiór dowolnych funkcji z $$X$$ w $$K$$.  
Działania $$+$$ i $$\alpha \cdot$$ (dla $$ \alpha \in K $$) na $$K^X$$ definiujemy jak wyżej dla $$\mathbb{R}^{\mathbb{R}}$$.  
Wtedy $$(K^X, + \alpha \cdot )$$ jest przestrzenią liniową nad $$K$$.

5. Zamieniając w przykładzie (4) $$K$$ przez dowolną przestrzeń liniową $$V$$ nad $$K$$ dostajemy $$( V^X, +, \alpha \cdot )$$ i ta struktura też jest przestrzenią liniową.
</div>

##Podprzestrzenie
Niech $$V$$ będzie przestrzenią liniową nad $$K$$. Mówimy, że $$U \subseteq V$$ jest podprzestrzenią $$V$$, gdy $$U$$ z działaniami z $$V$$ jest przestrzenią liniową.
{:.def}

Niech $$ U \subseteq V $$ i $$V$$ - przestrzeń liniowa nad $$K$$. $$U$$ jest podprzestrzenią $$V$$, gdy każdy z poniższych warunków jest spełniony:  
1. $$ \overrightarrow{0} \in U $$  
2. $$ \forall_{u,v \in U}\ u+v \in U $$  
3. $$ \forall_{\alpha \in K}\ \forall_{u \in U}\ \alpha \cdot u \in U $$
{:.fact}

**Uwaga notacyjna:**  
Dla przestrzeni liniowej $$V$$ i $$ U \subseteq V $$ symbol $$ U \leq V $$ oznacza, że $$U$$ jest podprzestrzenią $$V$$.


<div class="example" markdown="1">
1. Niech $$K$$ - ciało, a $$ V=K[x] $$ - przestrzeń liniowa wielomianów nad $$K$$.  
Niech $$K_{ \lt 10}[x]$$ - zbiór wielomianów mniejszych o stopniu mniejszym od 10.  
Widzimy, że $$ U := K_{ \lt 10}[x] $$ spełnia warunki (1),(2) i (3) z powyższego faktu, więc $$K_{ \lt 10}[x]$$ jest podprzestrzenią $$K[x]$$.  

2. $$K_10 [x] $$ - zbiór wielomianów nad $$K$$ o stopniu równym 10.  To nie jest podprzestrzeń, bo np:  
$$\begin{cases} x^{10} \in K_{10}[x] \\ -x^{10} \in K_{10}[x] \end{cases} $$,    ale $$ X^{10} + ( -x ^{10}) = 0 \notin K $$  

3. $$ V = K^3, U = \{ (a,b,c) \in K^3 :\ a + 2b + 3c = 0 \}$$ jest podprzestrzenią $$V$$, bo:  
I. $$ 0 + 2 \cdot 0 + 3 \cdot 0 = 0 \Rightarrow (0,0,0) \in U $$  
II. Dla $$ ( a_1, b_1, c_1 ),( a_2, b_2, c_2 ) \in U $$ mamy:  
$$\begin{cases} a_1 + 2b_1 + 3b_1 = 0 \\ a_2 + 2b_2 + 3c_3 = 0 \end{cases}$$  
Wtedy: $$ (a_1, b_1, c_1 ) + ( a_2, b_2, c_2 ) = ( a_1 + a_2, b_1 + b_2, c_1 + c_2 ) = ( a_1 + a_2 ) + 2( b_1 + b_2 ) + 3( c_1 + c_2 ) = ( a_1 + 2b_1 + 3c_1 ) + ( a_2 + 2b_2 + 3c_2 ) = 0 + 0 = 0 $$  
III. Dla $$\alpha \in K,\ (a,b,c) \in U $$, mamy:  
$$ a + 2b + 3c = 0 \Rightarrow \alpha a + 2 \alpha b + 3 \alpha c = 0 $$  
$$ \alpha \cdot (a,b,c) = ( \alpha \cdot a, \alpha \cdot b, \alpha \cdot c ) \in U $$
</div>

##Przestrzenie generowane
Niech $$V$$ - przestrzeń liniowa nad $$K$$  
I. Kombinacjami liniowymi wektorów $$v_1, \ldots, v_k \in V $$ nad $$K$$ nazywamy wszystkie wektory postaci $$ \alpha_1 \cdot v_1 + \alpha_2 \cdot v_2 + \ldots \alpha_k \cdot v_k$$, dla $$ \alpha_1, \ldots, \alpha_k \in K $$.  
II. Dla dowolnego $$ A \subset V$$, $$Lin(A) = \{ \alpha_1 \cdot v_1 + \ldots + \alpha_k \cdot v_k, k \in \mathbb{N}, v_1,\ldots,v_k \in A, \alpha_1, \ldots, \alpha_k \in K \}$$ nazywamy przestrzenią liniową generowaną (rozpiętą) nad $$A$$.
{:.def}


I. Niech $$V$$ będzie przestrzenią liniową. Wtedy: $$ A \subset V \Rightarrow Lin(A) \leq V $$.  
II. $$Lin(A)$$ jest najmniejszą (w sensie inkluzji) podprzestrzenią $$V$$ zawierającą $$A$$.
{:.fact}

<div class="example" markdown="1">
1. $$ V = K^3.\ A=\{ (1,0,0), (1,1,0) \} $$  
Wtedy: $$ Lin(A) = \{ \alpha (1,0,0) + \beta (1,1,0), \alpha, \beta \in K \} = \{ (\alpha + \beta, \beta, 0 ): \alpha,\beta \in K \} = \{ (a,b,0): a,b \in \mathbb{R} \} $$  
2. $$ V = K[x],\ A = \{ x^3 \} $$  
$$ Lin(A) = \{ \alpha \cdot x^3 :\ \alpha \in K \} $$
</div>

$$V$$ = przestrzeń liniowa nad $$K$$. Układ wektorowy $$v_1, v_2, \ldots, v_k \in V $$ nazywamy liniowo niezależnym, gdy $$ \forall_{ v_1, \ldots, v_k \in K }\ \  \alpha_1 v_1 + \ldots \alpha_k v_k = \overrightarrow{0} \Rightarrow \alpha_1 = \alpha_2 = \ldots = \alpha_k $$  
Układ liniowy, który nie jest liniowo niezależny nazywamy układem liniowo zależnym
{:.def}

**Terminologia:**
I. Zamiast układ wektorów $$ v_1, v_2, \ldots, v_k $$ możemy mówić, że wektory $$ v_1, \ldots, v_k $$ są ... (np. liniowo niezależne ).  
II. Zbiór wektorów jest liniowo  niezależny, gdy układ jego (parami różnych) elementów jest liniowo niezależny.

<div class="example" markdown="1">
1. Układ wektórów $$  \left( \begin{array}{c} 1 \\ 0 \end{array}  \right) \left( \begin{array}{c} 0 \\ 1 \end{array}  \right)  $$ w $$\mathbb{R}^2$$ jest liniowo niezależny, bo jeśli:  
$$ \alpha \cdot \left( \begin{array}{c} 1 \\ 0 \end{array} \right) + \beta \cdot \left( \begin{array}{c} 0 \\ 1 \end{array} \right) = \overrightarrow{0} $$, to $$ \left( \begin{array}{c} \alpha \\ \beta \end{array} \right) = \left( \begin{array}{c} 0 \\ 0 \end{array} \right) $$, więc $$ \alpha = \beta = 0 $$.  

2. Wektory $$ \left( \begin{array}{c} 1 \\ 2 \end{array}  \right) \left( \begin{array}{c} 2 \\ 4 \end{array}  \right)$$ w $$\mathbb{R}^2$$ są liniowo zależne, bo $$ 2 \cdot \left( \begin{array}{c} 1 \\ 2 \end{array}  \right) + (-1) \cdot \left( \begin{array}{c} 2 \\ 4 \end{array}  \right) = \left( \begin{array}{c} 0 \\ 0 \end{array}  \right) = \overrightarrow{0} $$  

3. Wektory $$\left( \begin{array}{c} 1 \\ 1 \end{array}  \right) \left( \begin{array}{c} 1 \\ 1 \end{array}  \right)$$ w $$\mathbb{R}^2$$ są liniowo zależne, bo $$ 1 \cdot \left( \begin{array}{c} 1 \\ 1 \end{array}  \right) + (-1) \cdot \left( \begin{array}{c} 1 \\ 1 \end{array}  \right) = \left( \begin{array}{c} 0 \\ 0 \end{array}  \right) = \overrightarrow{0} $$  
</div>

**Uwaga:**  
W przestrzeni $$K^n$$ układ wektorów $$ v_1=\left( \begin{array}{c} a_{1\ 1} \\ a_{2\ 1} \\ \vdots \\ a_{n\ 1} \end{array}  \right), \ldots, v_k = \left( \begin{array}{c} a_{1\ k} \\ a_{2\ k} \\ \vdots \\ a_{n\ k} \end{array}  \right) $$ jest liniowo niezależny  **wtedy i tylko wtedy**, gdy jedyne rozwiązanie układu równań $$ \begin{cases} a_{1\ 1}x_1 + \ldots + a_{1\ k}x_k = 0 \\ \vdots \\ a_{n\ 1}x_1 + \ldots + a_{n\ k}x_k = 0 \end{cases} $$, to $$ x_1 = x_2 = \ldots + x_k = 0 $$

Wektory $$v_1, v_2, \ldots, v_k$$ są liniowo zależne wtedy i tylko wtedy, gdy istnieje $$ i \in \{ 1, \ldots, k \}$$, takie, że $$v_i$$ jest liniową kombinacją $$ v_1, \ldots, v_{i-1}, v_{i+1}, \ldots, v_k $$ (tzn, że $$ v_i \in (\{ v_1, \ldots,  v_{i-1}, v_{i+1}, \ldots, v_k \})$$)
{:.fact}

Każdy skończony zbiór wektorów $$\{ v_1, v_2, \ldots, v_k \} $$zawiera liniowo niezależny podzbiór
{:.lemma}

Niech $$V$$ będzie przestrzenią liniową i $$A,B \subseteq V $$. Wtedy:  
1. $$ A \subseteq lin(A) $$  
2. $$ A \subseteq B \Rightarrow Lin(A) \subseteq Lin(B) $$  
3. $$ Lin( Lin( A )) = Lin(A) $$  
4. (tzw. _własność wymiany_) $$ a \in Lin(A \cup \{b\} ) \backslash Lin(A) \Rightarrow b \in Lin( A \cup \{a\})$$ 
{:.fact}