---
title: Bardzo dużo rzeczy naraz
description: Wielomiany wzgl. pierwsze, twierdzenia, wzór interpolacyjny, charakterystyki i jeszcze więcej
---

# Bardzo dużo rzeczy naraz

## O wielomianach względnie pierwszych

$$ f \in F[x] $$. Jeśli $$ f \vert g_1 \cdot \ldots \cdot g_k $$ i f jest nierozkładalny, to $$ f \vert g_i $$ dla pewnego i.
{:.fact}

<div class="fact" markdown="1">
F - ciało. Jeśli $$ f_1, \ldots, f_k \in F[x] $$ są parami względnie pierwsze (prawda np. gdy są parami niestowarzyszone i nierozkładalne) i $$ \forall i\ (f_i \vert h) $$, to $$ f_1 \cdot \ldots \cdot f_k \vert h $$.

> Dwa wielomiany f i g są stowarzyszone wtw, gdy $$ f = cg $$ dla $$ c \in F \setminus \{0\} $$.
</div>

Jeśli każdy z wielomianów $$ f_1, \ldots, f_k $$ jest względnie pierwszy z $$ f_{k+1} $$, to $$ f_1 \cdot \ldots \cdot f_k $$ też jest względnie pierwszy z $$ f_{k+1} $$.
{:.lemma}

## Twierdzenie o jednoznaczności rozkładu

<div class="theorem" markdown="1">
Niech F - ciało.

Wówczas każdy wielomian $$ f \in F[x] \setminus F $$ można zapisać w postaci $$ f_1 \cdot \ldots \cdot f_k \in F[x] $$ dla pewnych $$ f_1, \ldots, f_k \in F[x] $$ nierozkładalnych i to jednoznacznie w takim sensie, że jeśli $$ f = g_1 \cdot \ldots \cdot g_i $$, gdzie $$ g_1, \ldots, g_i \in F[x] $$ są nierozkładalne, to $$ k=l $$ oraz po odpowiednim spermutowaniu wielomianów $$ g_1, \ldots, g_i $$ dostajemy, że $$ (f_1, g_1), \ldots, (f_i, g_i) $$ są parami wielomianów stowarzyszonych.
</div>

## Twierdzenie Bezout

Reszta z dzielenia $$ f \in F[x] $$ przez $$ x-c $$ wynosi $$ \overline{f}(c) $$. Stąd $$ x-c \vert f \Leftrightarrow \overline{f}(c) = 0 $$.
{:.theorem}

Dla $$ f \in F[x] $$ element $$ c \in F $$ jest **pierwiastkiem** (zerem) f, gdy $$ \overline{f}(c) = 0 $$.
{:.def}

Wielomian $$ f \in F[x] $$ stopnia n ma co najmniej n parami różnych pierwiastków.
{:.fact}

$$ f \in F[x] $$. Mówimy, że $$ c \in F $$ jest **k-krotnym pierwiastkiem** f, gdy $$ f=(x-c)^k \cdot g $$ dla pewnego $$ g \in F[x] $$, t. że $$ \overline{g}(c) \neq 0 $$ (tzn. $$ x-c \nmid g $$).
{:.def}

## Zasadnicze twierdzenie algebry

<div class="theorem" markdown="1">
Ciało liczb zespolonych $$ \mathbb{C} $$ jest **algebraicznie domknięte**, tzn. każdy wielomian $$ f \in \mathbb{C}[x] \setminus \mathbb{C} $$ ma pierwiastek w $$ \mathbb{C} $$.
Równoważnie każdy taki $$ f \in \mathbb{C}[x] \setminus \mathbb{C} $$ zapisuje się w postaci $$ c \cdot (x-x_1)^{k_1} \cdot \ldots \cdot (x-x_n)^{k_n},\ x_1, \ldots, x_n \in \mathbb{C},\ k_1, \ldots, k_n \in \mathbb{N}^+ $$.

**Uwaga:** Nie jest prawdą, że każdy wielomian $$ f \in \mathbb{R}[x] \setminus \mathbb{R} $$ ma pierwiastki w $$\mathbb{R}$$, np. $$ x^2+1 $$ nie ma.
</div>

## Wzór interpolacyjny Lagrange'a

<div class="theorem" markdown="1">
Niech $$ x_1, \ldots, x_n \in F $$ są parami różne i $$ y_1, \ldots, y_n \in F $$ są dowolne. Wtedy istnieje dokładnie jeden wielomian $$ f \in F[x] $$ stopnia \< n, t. że $$ f(x_1)=y1, \ldots, f(x_n)=y_n$$. Jest on zadany wzorem:

<script type="math/tex; mode=display">
\sum_{k=1}^{n} \left( y_k \cdot \prod_{i \neq k} \frac{x - x_i}{x_k - x_i} \right)
</script>
</div>

<div class="example" markdown="1">
Znaleźć wielomian f stopnia \< 2, t. że $$ f(1) = 3 $$ i $$ f(5) = 7 $$.

**Rozwiązanie:**

$$ f(x) = 3 \frac{x-5}{1-5} + 7 \frac{x-1}{5-1} = x-2. $$

</div>

## Grupa multyplikatywna

**Grupa multyplikatywna** ciała skończonego jest cykliczna.
{:.theorem}

Niech G - grupa skończona rzędu n. Jeśli dla dowolnego $$ k \in \mathbb{N}^+\ \left\vert\{g \in G : g^k = e \}\right\vert \leq k $$, G jest cykliczna.
{:.lemma}

## Trzy poziome kreski

<div class="def" markdown="1">
Niech $$ h \in F[x] $$. Dla $$ f, g \in F[x] $$ definiujemy $$ f \equiv_h h \Leftrightarrow h \mid f-g $$.  

**Uwaga:** $$\equiv_h$$ jest relacją równoważności na F[x].
</div>

<div class="fact" markdown="1">
$$ f \equiv_h f' \wedge g \equiv_h g' \Rightarrow f+g \equiv_h f'+g' \wedge f \cdot g \equiv_h f' \cdot g' $$
</div>

<div class="fact" markdown="1">
Dla $$ h \in F[x], F[x]/_{\equiv_h} = \{[f]_{\equiv_h} : f \in F[X] \} $$ staje się pierścieniem przemiennym z jednością równą $$[1]_{\equiv_h}$$ z działaniami $$\cdot_h$$ i $$+_h$$:

<script type="math/tex; mode=display">
[f]_{\equiv_h} +_h [g]_{\equiv_h} := [f+g]_{\equiv_h}
</script>
<script type="math/tex; mode=display">
[f]_{\equiv_h} \cdot_h [g]_{\equiv_h} := [f \cdot g]_{\equiv_h}
</script>
</div>

Jeśli $$ h \in F[x] $$ jest nierozkładalny, to $$ (F[x]/_{\equiv_h}, +_h, \cdot_h) $$ jest ciałem.
{:.theorem}

Jeśli p jest liczbą pierwszą i $$ h \in \mathbb{Z}_p[x] $$ jest nierozkładalny, to $$ (\mathbb{Z}_p[x]/_{\equiv_h}, +_h, \cdot_h) $$ ma $$ p^{\deg(h)} $$ elementów.
{:.conc}

## Charakterystyki

**Charakterystyką** ciała F nazywamy najmniejszą liczbę $$ p \in \mathbb{N}^+$$, t. że $$ \underbrace{1 + \ldots + 1}_p  = 0 $$, o ile taka istnieje. W przeciwnym razie mówimy, że F ma charakterystykę 0.
{:.def}

F - ciało $$ \Rightarrow $$ char(F) = 0 $$\vee$$ char(F) - liczba pierwsza
{:.fact}

<div class="theorem" markdown="1">
Ciało skończone ma skończoną charakterystykę p i jego moc jest liczbą pierwszą postaci $$p^n$$ dla $$n \in \mathbb{N}^+ $$. ma odwrót, dla każdej liczby pierwszej p oraz $$ n \in \mathbb{N}^+ $$ istnieje ciało mocy $$p^n$$.

Dwa ciała skończone tej samej mocy są izomorficzne. Wszystkie ciała skończone charaterystyki p można uzyskać (z dokładnością do izomorfizmu) jako $$( \mathbb{Z}_p[x]/_{\equiv_h}, +_h, \cdot_h )$$ dla $$ h \in \mathbb{Z}_p[x] $$ nierozkładalnych.
</div>

<div class="example" markdown="1">
Szukamy ciała 4-elementowego.

W tym celu trzeba znaleźć wielomian _nierozkładalny_ $$h \in \mathbb{Z}_2[x] $$ stopnia 2, bo wtedy $$( \mathbb{Z}_p[x]/_{\equiv_h}, +_h, \cdot_h )$$ jest ciałem o $$2^{\deg(h)} = 2^2 = 4$$ elementach.  

Weźmy $$ h:= x^2+x+1 \in \mathbb{Z}_2[x] $$ (nierozkładalny, bo nie ma pierwiastków w $$\mathbb{Z}_2$$, bo $$h(0) = 1 = h(1)$$ ).  
Elementy ciała $$\mathbb{Z}_2[x]/_{\equiv_h}$$ : $$[0]_{\equiv_h}, [1]_{\equiv_h}, [2]_{\equiv_h}, [3]_{\equiv_h}$$.
</div>