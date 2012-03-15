---
title: Dalszy ciąg grup, twierdzenie Lagrange'a, obraz i jądro
---

**Fakt:**
<div class="def" markdown="1">
Niech \\( H \leq G \\). Wtedy:

1) Definiujemy relację binarną ~ na G:
   g ~ h \\( \Leftrightarrow \\) g * h = h * H. Wtedy ~ jest relacją równoważności na G.

2) Zdefiniujmy jeszcze jedną relację binarną na G, nazwijmy ją \\( \approx \\).
   Wtedy g \\( \approx \\) h \\( \Leftrightarrow \\) Hg = Hh.
</div>


Z powyższych relacji wynika jeden ważny **wniosek**:

{:.def}
[g]\\(_{\thicksim}\\) := { x \\(\in\\) G | g ~ x } = g*H.

{:.def}
[g]\\(_{\approx} \\) := { x \\(\in\\) G | g \\(\approx\\) x } = H*g

Poza tym **trzeba wiedzieć, że:** 

{:.def}
g ~ h \\( \Leftrightarrow h^{-1}g\ \in\ H \Leftrightarrow \ g^{-1}h\ \in/H \\)

oraz

{:.def}
\\(g \approx h \Leftrightarrow hg^{-1}\ \in H\ \Leftrightarrow gh^{-1}\ \in H \\)

Jeszcze jeden **wniosek**:

<div class="def" markdown="1">

Załóżmy, że H \\(\leq\\) G. Wtedy:

\\( \forall g \in G\ g \in g*H \\)

$$ \forall _{g_1,\ g_2 \ \in G} \ g_1*H=g_2*H\ \vee g_1*H \cap g_2*H\ = \emptyset $$
</div>

No to jeszcze jeden **wniosek**:

{:.def}
Niech H \\(leq\\) G. Wtedy G rozpada się na rozłączną sumę watstw lewostronnych ( prawostronnych ) grupy H. Innymi słowy: $$ \forall _{ g_1,g_2 \ \in \ G} \mid g_1H \mid =\mid g_2H\mid $$

**Fakt:**

{:def}
\\( \forall_{g\ \in \ G} \mid gH \mid =\mid H \mid =\mid Hg\mid \\)

**Definicja:**

{:.def}
Niech H będzie podgrupą grupy G. Wtedy indeksujemy(?) H w G jako ilość różnych warstw lewostronnych podgrupy H w G i oznaczamy go przez [G:H].

###Twierdzenie Lagrange'a###

Niech H $$\leq$$ G i niech G będzie grupą skończoną (twierdzenie to da się rozciągnąć na grupy nieskończone, ale po co to robić? ). Wtedy:
|G| = |H| \\(\cdot\\) [G:H].
Analogiczne rozumowanie jest prawidłowe dla warstw prawostronnych.

**Wniosek:**
{:.def}
H \\(\leq\\) G => |H| / |G| (wynika to z tego, że |G|=|H| \\(\cdot\\) [G:H])

**Definicja:**

{:.def}
Niech H $$\leq$$ G. Mówimy, że H jest podgrupą normalną G, gdy dla każdego g$$\in$$G, $$g^{-1} \cdot H \cdot g\ \leq \ H$$. Zapisujemy to: H $$\unlhd$$ G.

**Fakt:**

<div class="def" markdown="1">
Niech H \\(\leq\\) G. Wówczas następujące warunki są równoważne:

1) H \\(\unlhd\\) G.

2) \\(\forall_{g\in G} g^{-1}Hg=H\\)

3) \\(\forall_{g\in G} gHg^{-1}=H\\)

4) \\(\forall_{g\in G} gH=Hg\\)
</div>

**Fakt:**

{:.def}
Jeśli H \\(\leq\\) G i [G:H]=2, to H \\( \unlhd \\) G.

**Definicja:**

<div class="def" markdown="1">
Niech N \\(\unlhd\\) G. Definiujemy grupę ilorazową G/N :
-	Elementy G/N to wszystkie warstwy lewostronne (prawostronne) g \\(\cdot\\) N, g \\(\in\\) G.
-	Działanie \\(\cdot\\) w G/N: $$ ( g_1N )( g_2N )\ :=\ g_1g_2N $$
</div>

**Fakt:**

{:.def}
Powyższe działanie \\(\cdot\\) jest dobrze zdefiniowane ( tzn, nie zależy od wyboru reprezentantów $$g_1$$ i $$g_2$$ warstw $$g_1N$$ i $$g_2N$$ ) i zadaje(?) strukturę grupy na G/N.

**Definicja:**

<div class="def" markdown="1">
Niech f: G->H ( grupy homomorficzne ). Wtedy:

-	Jądro f to zbiór Ker(f) = { g \\(\in\\) G | f(g) = \\(e_H\\)}

-	Obraz f to zbiór Img(f) = { h \\(\in\\) H | \\(\exists_{g \in G}\\) f(g) = h }
</div>

**Fakt:**

<div class="def" markdown="1">
Niech f: G->H będzie homomorfizmem. Wtedy:

1) Ker(f) \\(\unlhd\\) G.

2) Img(f) \\(\leq\\) H.
</div>