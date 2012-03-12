---
title: Dalszy ciąg grup, twierdzenie Lagrange'a, obraz i jądro
---

**Fakt:**

	Niech $$ H \leq G $$. Wtedy:
	1) Definiujemy relację binarną ~ na G:
	   g ~ h $$\Leftrigtharrow $$ g * h = h * H. Wtedy ~ jest relacją równoważności na G.
	2) Zdefiniujmy jeszcze jedną relację binarną na G, nazwijmy ją $$ \approx $$.
	   g $$ \approx $$ h $$ \Leftrigtharrow $$ Hg = Hh.

Z powyższych relacji wynika jeden ważny **wniosek**:
>	[g]$$_{\thicksim}$$ := { x $$\in$$ G | g ~ x } = g*H.

>	[g]$$_{\approx} $$ := { x $$\in$$ G | g $$\approx$$ x } = H*g

Poza tym **trzeba wiedzieć, że:** 
>	g ~ h $$\Leftrigtharrow$$ $$h^{-1}g\ \in/H $$ $$\Leftrigtharrow$$ $$g^{-1}h\ \in/H $$

oraz
>	g $$\approx$$ h $$\Leftrigtharrow$$ $$hg^{-1}\ \in H\ \Leftrigtharrow gh^{-1}\ \in H $$

Jeszcze jeden **wniosek**:
>	Załóżmy, że H $$\leq$$ G. Wtedy:

>	$$\forallg \in G\ g \in g*H$$

>	$$\forall_{g_1,\ g_2\ \in G} g_1*H=g_2*H\ \vee g_1*H \cap g_2*H\ = \oslash

No to jeszcze jeden **wniosek**:

>	Niech H $$\leq$$ G. Wtedy G rozpada się na rozłączną sumę watstw lewostronnych ( prawostronnych ) grupy H. Innymi słowy:  $$ \forall_{ g_1,g_2\ \in \ G} |g_1H|=|g_2H|.

**Fakt:**

	$$\forall_{g\ \in \ G} |gH\ =\ |H|\ =\ |Hg|$$

**Definicja:**

	Niech H będzie podgrupą grupy G. Wtedy indeksujemy(?) H w G jako ilość różnych warstw lewostronnych podgrupy H w G i oznaczamy go przez [G:H].

###Twierdzenie Lagrange'a###

	Niech H $$\leq$$ G i niech G będzie grupą skończoną (twierdzenie to da się rozciągnąć na grupy nieskończone, ale po co to robić? ). Wtedy:
	|G| = |H| $$\cdot$$ [G:H].
	Analogiczne rozumowanie jest prawidłowe dla warstw prawostronnych.

**Wniosek:**
>	H $$leq$$ G => |H| / |G| (wynika to z tego, że |G|=|H| $$\cdot$$ [G:H])

**Definicja:**

	Niech H $$\leq$$ G. Mówimy, że H jest podgrupą normalną G, gdy dla każdego g$$\in$$G, $$g^{-1} \cdot H \cdot g\ \leq \ H$$. Zapisujemy to: H $$\unlhd$$ G.

**Fakt:**

	Niech H $$\leq$$ G. Wówczas następujące warunki są równoważne:
	1) H $$\unlhd$$ G.
	2) $$\forall_{g\in G} g^{-1}Hg=H$$
	3) $$\forall_{g\in G} gHg^{-1}=H$$
	4) $$\forall_{g\in G} gH=Hg$$

**Fakt:**

	Jeśli H $$\leq$$ G i [G:H]=2, to $$H \unlhd G $$.

**Definicja:**

	Niech N $$\unlhd$$ G. Definiujemy grupę ilorazową G/N :
	-	Elementy G/N to wszystkie warstwy lewostronne (prawostronne) g $$\cdot$$ N, g $$\in$$ G.
	-	Działanie $$\cdot$$ w G/N: $$\( g_1N \)\( g_2N \)\ :=\ g_1g_2N$$

**Fakt:**

	Powyższe działanie $$\cdot$$ jest dobrze zdefiniowane ( tzn, nie zależy od wyboru reprezentantów $$g_1$$ i $$g_2$$ warstw $$g_1N$$ i $$g_2N$$ ) i zadaje(?) strukturę grupy na G/N.

**Definicja:**

	Niech f: G->H ( grupy homomorficzne ). Wtedy:
	-	Jądro f to zbiór Ker(f) = { g $$\in$$ G | f(g) = $$e_H$$}
	-	Obraz f to zbiór Img(f) = { h $$\in$$ H | $$\exists_{g \in G}$$ f(g) = h }

**Fakt:**

	Niech f: G->H będzie homomorfizmem. Wtedy:
	1) Ker(f) $$\unlhd$$ G.
	2) Img(f) $$\leq$$ H.