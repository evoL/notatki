---
title: Pierścienie i ciała, alg. Euklidesa
---

# Pierścienie i ciała, algorytm Euklidesa

## Homomorfizm ilorazowy

Niech \\( N\ \unlhd \ G \\). Wtedy funkcja \\( q: G \rightarrow G/N \\) zadana wzorem \\( q(g)=gN \\) jest homomorfizmem ( zwanym homomorfizmem ilorazowym ) oraz \\( \ker(q)=N \\).
{:.fact}

## Twierdzenie o homomorfiźmie

Niech \\( f:\ G \rightarrow H  \\) będzie homomorfizmem grup, a $$ g:\ G \rightarrow G/ _{\ker(F)} $$ homomorfizmem ilorazowym. Wtedy istnieje dokładnie jeden monomorfizm \\( f:\ G/_{ker(F)} \rightarrow H  \\), taki że \\( F=f \circ g \\).  
\\(f\\) jest zadane wzorem: \\( f(g\ \ker(F) ) = F(g) \\). Gdy ponadto F jest "na" (czyli jest epimorfizmem), to powyższe \\(f\\) musi być izomorfizmem, a więc w tej sytuacji $$ G/_{\ker(F)} \cong H $$.
{:.theorem}

**Uwaga:**  
Niech \\( H \unlhd G \\) oraz niech \\( \odot \\) oznacza działanie w grupie ilorazowej \\( G/N \\), tzn:

$$ g_1 N \odot g_2 N  = g_1 g_2 N $$

oraz niech \\( \cdot \\) oznacza mnożenie podzbiorów grupy \\( G \\), tzn.

$$ g_1 N \cdot g_2 N = \{ x \cdot y : x \in g_1N,\ y \in g_2N \} $$

Wtedy dla dowolnych warstw $$ g_{1}N $$ i $$ g_{2} N $$ mamy:

$$ g_1N \odot g_2N = g_1N \cdot g_2N $$

## Pierścienie i ciała

**Pierścień** - struktura algebraiczna \\((R,+,\cdot)\\) jest pierścieniem, gdy:  
1. \\( (R,+) \\) jest grupą przemienną  
2. działanie \\( \cdot \\) jest łączne  
3. działanie \\( \cdot \\) jest rozdzielne względem \\( + \\).
{:.def}

**Ciało** - struktura algebraiczna \\((R,+,\cdot)\\) jest ciałem, gdy:  
1. \\( (R, +, \cdot) \\) jest pierścieniem  
2. \\( (R \backslash {0}, \cdot) \\) jest grupą przemienną, gdzie \\(0\\) jest elementem neutralnym względem \\(+\\).
{:.def}

Pierścień \\( (R,+,\cdot) \\) jest przemienny, gdy działanie \\( \cdot \\) jest przemienne.
{:.def}

**Uwagi notacyjne:**

- Element neutralny względem \\(+\\) oznaczamy przez \\(0\\).  
- Gdy istnieje element neutralny wzgledem \\( \cdot \\), oznaczamy go przez 1 i mówimy, że pierścień \\( (R, +, \cdot) \\) ma jedność.  
- \\( -a \\) to element odwrotny do \\(a\\) względem \\(+\\).  
- \\( a^{-1} \\) to element odwrotny do \\(a\\) względem \\( \cdot \\) (o ile taki istnieje).  
- \\( a-b := a +(-b) \\).

<div class="fact" markdown="1">
W dowolnym pierścieniu:

1. \\( 0 \cdot x = x \cdot 0 = 0 \\) dla wszystkich \\(x\\).  
2. \\( (-x) \cdot y = x \cdot (-y) = -(xy) \\).
</div>

## Algorytm Euklidesa

<div class="def" markdown="1">
**Wejście:** dwie liczby naturalne $$ m_0 = m,\ n_0 = n $$

**Opis działania na i-tym kroku:**

- jeśli $$ m_i=0 $$, to algorytm kończy działanie i zwraca $$n_i$$  
- jeśli $$ n_i=0 $$, to algorytm kończy działanie i zwraca $$m_i$$
- jeśli $$ m_i \geqslant n_i > 0 $$, to algorytm zastępuje $$ m_i $$ przez $$r_{n_i} ( m_i ) $$ tzn: $$ m_{i+1} = r_{n_i}(m_i)\ \wedge \ n_{i+1} = n_i $$
- jeśli $$ n_i > m_i > 0 $$, to algorytm zastępuje $$ n_i $$ przez $$ r_{m_i}(n_i) $$, tzn $$ n_{i+1} = r_{m_i}(n_i)\ \wedge \ m_{i+1} = m_i $$
</div>

Niech \\( m,n \in \mathbb{Z} \\) i \\( (m,n)\neq (0,0) \\). Wtedy istnieją \\( a,b \in \mathbb{Z} \\) takie, że \\( am+bn = NWD(m,n) \\).
{:.theorem}