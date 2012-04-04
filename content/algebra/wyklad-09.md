---
title: Przestzenie liniowe cd.
---

#Przestrzenie liniowe - ciąg dalszy

##Bazy przestrzeni

Podzbiór (układ) $$B$$ przestrzeni liniowej $$V$$ nazywamy **bazą** $$V$$, gdy jest on liniowo niezależny i generuje $$V$$ ( tzn. $$Lin(B)=V$$ ).
{:.def}

Przestrzeń liniowa $$V$$ jest **skończenie liniowa**, gdy $$ V = Lin( v_1, \ldots, v_k ) $$ dla pewnych skończonych wektorów $$ v_1, v_2, \ldots, v_k \in V$$.
{:.def}

Każda przestrzeń liniowa ma bazę.
{:.theorem}

**Uwaga:**  
Ogólnie powyższa teza wynik łatwo z lematu Kuratowskiego-Zorna (LKZ).

<div class="example" markdown="1">
Przykłady baz:

1. $$ \left\{ \left( \begin{array}{c} 1 \\ 0 \end{array} \right) \left( \begin{array}{c} 0 \\ 1 \end{array}  \right) \right\} \subseteq \mathbb{R}^2 $$ jest bazą $$ \mathbb{R}^2 $$, bo jest liniowo niezależna i generuje $$\mathbb{R}^2$$.

2. $$\left\{ \left( \begin{array}{c} 1 \\ 0 \end{array}  \right) \left( \begin{array}{c} 0 \\ 1 \end{array}  \right)  \left( \begin{array}{c} 1 \\ 1 \end{array}  \right)   \right\} \subseteq \mathbb{R}^2 $$ nie jest bazą, bo ten zbiór jest liniowo zależny, np. $$ \left( \begin{array}{c} 1 \\ 1 \end{array}  \right) = 1 \left( \begin{array}{c} 1 \\ 0 \end{array}  \right) + 1 \left( \begin{array}{c} 0 \\ 1 \end{array}  \right) $$

3. $$ \left\{ \left( \begin{array}{c} 1 \\ 0 \end{array}  \right) \right\} \subseteq \mathbb{R}^2 $$ nie jest bazą, bo nie generuje $$\mathbb{R}^2 $$

4. $$ \left\{  \underbrace{\left( \begin{array}{c} 1 \\ 0 \\ \vdots \\ 0 \end{array}  \right) \left( \begin{array}{c} 0 \\ 1 \\ \vdots \\ 0 \end{array}  \right) \left( \begin{array}{c} 0 \\ 0 \\ \vdots \\ 1 \end{array}  \right)}_{n}  \right\} \subseteq \mathbb{R}^n $$ tzw. **baza standardowa** $$\mathbb{R}^n$$.

5. Bazą $$ \mathbb{R}[x] $$ jest np zbiór $$ \{ 1, x, x^2, x^3, \ldots \}$$ - jest to nieskończona baza.
</div>

Jeśłi $$ v_1, \ldots, v_l $$ - liniowo niezależne i $$ v_1, \ldots, v_l \in Lin( e_1, \ldots, e_k ) $$, to $$ l \leq k $$.
{:.lemma}

Każde dwie bazy danej przestrzeni liniowej $$V$$ są równoważne.
{:.conc}

##Wymiary przestrzeni
Wymiarem przestrzeni liniowej $$V$$ nazywamy moc dowolnej bazy danej przestrzeni i oznaczamy go przez $$dim(V)$$.
{:.def}

**Uwaga:**  
Definicja ta jest poprawna, bo moce wszystkich baz są jednakowe na mocy poprzedniego wniosku.

<div class="example" markdown="1">
1. $$dim( \mathbb{R}^2 ) = 2$$, bo $$ \left\{ \left( \begin{array}{c} 1 \\ 0 \end{array}  \right) \left( \begin{array}{c} 0 \\ 1 \end{array}  \right)  \right\} $$ jest dwuelementową bazą dla $$ \mathbb{R}^2$$

2. $$dim(\mathbb{R}^n) = n$$, bo  $$\left\{  \underbrace{\left( \begin{array}{c} 1 \\ 0 \\ \vdots \\ 0 \end{array}  \right) \left( \begin{array}{c} 0 \\ 1 \\ \vdots \\ 0 \end{array}  \right) \left( \begin{array}{c} 0 \\ 0 \\ \vdots \\ 1 \end{array}  \right)}_{n}  \right\} $$ jest bazą n-elementową.

3. $$dim( \mathbb{R} [x] ) = \aleph_0 $$, bo $$ \mid \{ 1, x, x^2, x^3, \ldots \} \mid = \aleph_0 $$
</div>

I. Każdy podzbiór $$A$$ przestrzeni liniowej $$V$$ generujący $$V$$ zawiera bazę $$V$$.  
II. Każdy liniowo niezależny podzbiór $$A$$ przestrzeni liniowej $$V$$ rozszerza się do bazy $$V$$.
{:.fact}
 
I. Każdy podzbiór generujący $$V$$ ma moc  $$ \geq dim(V) $$.  
II. Każdy liniowo niezależny podzbiór $$V$$ ma moc $$ \leq dim(V) $$.
{:.conc}

<div class="example" markdown="1">
**Przykład zadania:**  

Czy wektory $$ \left( \begin{array}{c} 1 \\ 2 \\ 3 \end{array}  \right) \left( \begin{array}{c} 1 \\ 0 \\ 1 \end{array}  \right) \left( \begin{array}{c} 2 \\ 5 \\ 3 \end{array}  \right) \left( \begin{array}{c} 1 \\ 6 \\ 7 \end{array}  \right) $$ są liniowo niezależne w $$\mathbb{R}^3$$ ?

Odp: (Bez żadnych rachunków) Nie, bo tu mamy 4 wektory, a wymiar przestrzeni wynosi 3.
</div>


Każdy wektor w przestrzeni liniowej $$V$$ zapisuje się jednocznacznie jako kombinacja liniowa wektorów z dowolnie wybranej bazy przestrzeni $$V$$
{:.theorem}

**Uwaga notacyjna:**  
Niech $$B$$ będzie bazą przestrzeni liniowej $$V$$ ( $$ b_1, \ldots, b_n$$ są parami różne i o ustalonej kolejności ). Z twierdzenia poprzedniego wynik, że instnieją jedyne skalary $$ \alpha_1, \ldots, \alpha_k \in K $$ takie, że $$ V = \alpha_1 v_1 + \ldots + \alpha_n v_n $$.

##Wektor współrzędnych

**Wektor współrzędnych** wektora $$v$$ w bazie $$B$$ to:  
$$ [v]_B := \left( \begin{array}{c} \alpha_1 \\ \vdots \\ \alpha_n \end{array}  \right) \in K^n $$
{:.def} 

Niech $$V$$ będzie przestrzenią liniową nad $$K$$ wymiaru $$n$$, a $$B$$ bazą $$V$$. Wtedy funkcja $$ \phi : V \Rightarrow K^n $$ zadana wzorem $$ \phi (v) = [v]_B $$ jest bijekcją.
{:.conc}

<div class="example" markdown="1">

1. $$ v= \left( \begin{array}{c} 2 \\ 3 \end{array}  \right),\ B= \left\{ \left( \begin{array}{c} 1 \\ 0 \end{array}  \right) \left( \begin{array}{c} 0 \\ 1 \end{array}  \right) \right\} \subseteq \mathbb{R}^2 $$  
$$ v = 2 \left( \begin{array}{c} 1 \\ 0 \end{array}  \right) + 3\left( \begin{array}{c} 0 \\ 1 \end{array}  \right) \Rightarrow  [v]_B = \left( \begin{array}{c} 2 \\ 3 \end{array}  \right) $$

2. $$ v = \left( \begin{array}{c} 2 \\3 \end{array} \right), \ B = \left\{ \left( \begin{array}{c} 1 \\ 1 \end{array} \right) \left( \begin{array}{c} 1 \\ 2 \end{array}   \right) \right\} \subseteq \mathbb{R}^2 $$ Znaleźć $$[v]_B.$$  
$$ v = \alpha \left( \begin{array}{c} 1 \\ 1 \end{array}  \right) + \beta \left( \begin{array}{c} 1 \\ 2 \end{array}  \right) \Leftrightarrow \left( \begin{array}{c} 2 \\ 3 \end{array}  \right) = \left( \begin{array}{c} \alpha + \beta \\ \alpha + 2 \beta \end{array}  \right) \Leftrightarrow \begin{cases} \alpha + \beta = 2 \\ \alpha + 2 \beta = 3 \end{cases} \Leftrightarrow \begin{cases} \alpha = 1 \\ \beta = 2 \end{cases} $$. Czyli $$ [v]_B = \left( \begin{array}{c} 1 \\ 2 \end{array}  \right) $$

</div>

Wektor współrzędnych zależy nie tylko od $$v$$, ale też od bazy $$B$$.
{:.conc}

##Przekształcenia liniowe

Niech $$V,\ U $$ będą przestrzeniami nad ciałem $$K$$.  
Wtedy funkcja $$ F:\ V \rightarrow U $$ jest przekształceniem liniowym, gdy:  
a) $$ \forall_{v_1, v_2 \in V}\  F( v_1 + v_2 ) = F(v_1) + F(v_2) $$  
b) $$ \forall_{\alpha \in K}\ \forall_{v \in V }\ F( \alpha v ) = \alpha \cdot F(V) $$
{:.def}

Niech $$ F: \ V \rightarrow U $$ będzie przekształceniem liniowym. Wtedy:  
1. $$ Ker(F) = \{ v \in V: F(v) = \overrightarrow{0} \} \leq V $$ _(czyli Ker(F) jest podprzestrzenią V )_  
2. $$ Im(F) = \{ u \in U : \exists v \in V F(v)=u \} \leq U $$.
{:.fact}

**Uwaga:**  
$$F:\ V \rightarrow U $$ jest przekształceniem liniowym $$ \Rightarrow F( \overrightarrow{0}_v) = \overrightarrow{0}_u $$

<div class="example" markdown="1">

1. $$ F:\ \mathbb{R}[x] \rightarrow \mathbb{R}[x] $$ i $$F$$ określone wzorem $$ F(f) = f' $$ jest liniowe, bo:  
$$ F(f+g) = (f+g)' = f' + g' = F(f) + F(g) $$  
$$ F(\alpha f) = (\alpha f)' = \alpha \cdot f' = \alpha F(f) $$.  
**Jądro i obraz:**  
$$ Ker(F) = \{ f \in \mathbb{R}[x] : f' = 0 \} $$ _(czyli wszystkie wielomiany stałe)_  
$$ Im(F) = \mathbb{R}[x] $$ _(bo każdy wielomian jest pochodną pewnego innego wielomianu, mianowicie całki wyjściowego wielomianu)_

2. $$V$$ - przestrzeń liniowa nad $$K$$, $$\alpha \in K $$  
$$ F:\ V \rightarrow V $$  
$$ F(v) = \alpha v $$ - jest liniowe.

</div>

Rzędem przestrzeni liniowej $$F$$ nazywamy $$ dim(Im(F)) $$ i czasami oznaczamy go przez $$dim(F)$$.
{:.def}


Niech $$V,\ U$$ będą przestrzeniami liniowymi i $$ F:\ V \rightarrow U$$ - liniowe. Wtedy:  
$$ dim(V) = dim(Im(F)) + dim(Ker(F)) $$.
{:.theorem}

Niech $$ F:\ V \rightarrow U $$ i $$ G:\ V \rightarrow U $$ będą przekształceniami liniowymi. Wtedy:  
1. $$ F + G $$ jest liniowe  
2. $$ \alpha \cdot F $$ - też jest liniowe.
{:.fact}