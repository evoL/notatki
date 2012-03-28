---
title: Dalszy ciąg grup, twierdzenie Lagrange'a, obraz i jądro
---

# Dalszy ciąg grup, twierdzenie Lagrange'a, obraz i jądro

<div class="fact" markdown="1">
Niech \\( H \leq G \\). Wtedy:

1. Definiujemy relację binarną $$ \sim $$ na G:  
   $$ g \sim h \Leftrightarrow g * H = h * H $$. Wtedy $$\sim$$ jest relacją równoważności na G.
2. Zdefiniujmy jeszcze jedną relację binarną na G, nazwijmy ją \\( \approx \\).
   Wtedy $$ g \approx h \Leftrightarrow H*g = H*h $$.
</div>

Z powyższych relacji wynika:

<div class="conc" markdown="1">

$$ [g]_{\sim} := \{ x \in G\ \vert\ g \sim x \} = g*H $$  
$$ [g]_{\approx} := \{ x \in G\ \vert\ g \approx x \} = H*g $$

</div>

<div class="conc" markdown="1">

$$ g \sim h \Leftrightarrow h^{-1}g\ \in\ H \Leftrightarrow \ g^{-1}h\ \in H $$  
$$ g \approx h \Leftrightarrow hg^{-1}\ \in H\ \Leftrightarrow gh^{-1}\ \in H $$

</div>

<div class="conc" markdown="1">
Załóżmy, że H \\(\leq\\) G. Wtedy:  
\\( \forall g \in G\ (g \in g*H) \\)  
$$ \forall _{g_1, g_2 \in G} \ g_1*H=g_2*H\ \vee g_1*H \cap g_2*H\ = \emptyset $$
</div>

<div class="conc" markdown="1">
Niech $$ H \leq G $$. Wtedy G rozpada się na rozłączną sumę warstw lewostronnych (prawostronnych) grupy H. Innymi słowy: $$ \forall _{ g_1,g_2 \ \in \ G}\ |g_1H| = |g_2H| $$
</div>

\\( \forall_{g\ \in \ G} \mid gH \mid =\mid H \mid =\mid Hg\mid \\)
{:.fact}

Niech H będzie podgrupą grupy G. Wtedy indeksujemy(?) H w G jako ilość różnych warstw lewostronnych podgrupy H w G i oznaczamy go przez [G:H].
{:.def}

## Twierdzenie Lagrange'a

<div class="theorem" markdown="1">
Niech $$ H \leq G $$ i niech G będzie grupą skończoną _(twierdzenie to da się rozciągnąć na grupy nieskończone, ale po co to robić?)_. Wtedy:

$$ \vert G \vert = \vert H \vert \cdot [G:H] $$

Analogiczne rozumowanie jest prawidłowe dla warstw prawostronnych.
</div>

$$ H \leq G \Rightarrow \vert H \vert / \vert G \vert $$ (wynika to z tego, że $$ \vert G \vert = \vert H \vert \cdot [G:H] $$)
{:.conc}

## Podgrupy normalne

Niech $$ H \leq G $$. Mówimy, że H jest **podgrupą normalną G**, gdy dla każdego $$ g \in G $$, $$ g^{-1} \cdot H \cdot g\ \leq \ H$$.  
Zapisujemy to: $$ H \unlhd G $$.
{:.def}

<div class="fact" markdown="1">
Niech \\( H \leq G \\). Wówczas następujące warunki są równoważne:

1. \\( H \unlhd G \\).
2. \\(\forall_{g\in G}\ g^{-1}Hg=H\\)
3. \\(\forall_{g\in G}\ gHg^{-1}=H\\)
4. \\(\forall_{g\in G}\ gH=Hg\\)
</div>

Jeśli \\(H \leq G\\) i [G:H]=2, to \\(H \unlhd G\\).
{:.fact}

## Grupy ilorazowe

<div class="def" markdown="1">
Niech \\( N \unlhd G\\). Definiujemy **grupę ilorazową G/N**:

- Elementy G/N to wszystkie warstwy lewostronne (prawostronne) $$ g \cdot N $$, $$ g \in G $$.
- Działanie \\(\cdot\\) w G/N: $$ ( g_1N )( g_2N )\ :=\ g_1g_2N $$
</div>

Powyższe działanie \\(\cdot\\) jest dobrze zdefiniowane (tzn, nie zależy od wyboru reprezentantów $$g_1$$ i $$g_2$$ warstw $$g_1N$$ i $$g_2N$$) i nadaje strukturę grupy na G/N.
{:.fact}

## Jądro i obraz

<div class="def" markdown="1">
Niech $$ f: G \rightarrow H $$ (grupy homomorficzne). Wtedy:

- **Jądro f** to zbiór $$ Ker(f) = \{ g \in G\ \vert\ f(g) = e_H \} $$.
- **Obraz f** to zbiór $$ Img(f) = \{ h \in H\ \vert \ \exists_{g \in G}\ f(g) = h \} $$.
</div>

<div class="fact" markdown="1">
Niech $$ f: G \rightarrow H $$ będzie homomorfizmem. Wtedy:

1. \\( Ker(f) \unlhd G \\).
2. \\( Img(f) \leq H \\).
</div>