---
title: Twierdzenie Eulera, chińskie twierdzenie o resztach, pierścienie wielomianów
---

# Twierdzenie Eulera, chińskie twierdzenie o resztach, pierścienie wielomianów

Jeśli \\( (R, +, \cdot) \\) jest pierścieniem z jednością (1), to zbiór elementów odwracalnych ( względem \\(\cdot\\) ) pierścienia \\(R\\) oznaczamy przez \\( R^* \\) i wówczas \\( (R^*,+,\cdot) \\) jest grupą.
{:.fact}

## Funkcja i twierdzenie Eulera

**Funkcja Eulera** \\( \varphi : \mathbb{N} \rightarrow \mathbb{N}_+ \\) zdefiniowana jest następująco:  
\\( \varphi (m) = \\) ilość liczb naturalnych mniejszym od \\(m\\) i względnie pierwszych z \\(m\\).  
$$ \varphi (m) = | \mathbb{Z}^{*}_{m} | $$, gdzie $$ \mathbb{Z}_{m}^{*} $$ - elementy odwracalne \\( \< m\\).
{:.def}
 
Jeśli $$ m= p_{1}^{\alpha _1} \cdot \ldots \cdot p_{k}^{ \alpha _k} $$ jest rozkładem liczby na czynniki pierwsze, to:  
$$ \varphi (m) = ( p_{1}^{\alpha_1} - p_{1}^{\alpha_0} ) \cdot \ldots \cdot ( p_{k}^{\alpha_k} - p_{k}^{\alpha_{k-1}}) = m(1- \frac{1}{p_1} \cdot \ldots \cdot (1- \frac{1}{p_k} ))$$
{:.theorem}

<div class="theorem" markdown="1">
**Twierdzenie Eulera:**  
Jeśli liczby \\( a \in \mathbb{Z} \\) i \\( m \in \mathbb{N}_+ \\) są względnie pierwsze, to $$ a^{ \varphi (m) } \equiv 1(mod\ m) $$.

**Uwaga:**
Gdy m jest liczbą pierwszą, to dostajemy małe twierdzenie Fermata, bo \\( \varphi (p) = p -1 \\).
</div>

## Produkty pierścieni

Niech $$ (R_1, +_1, \cdot _1), \ldots , ( R_k, +_k, \cdot_k ) $$ będą pierścieniami. Definiujemy produkt (iloczyn kartezjański) tych pierścieni jako:  
$$ ( R_1 \times R_2 \times \ldots \times R_k, +, \cdot ) $$, gdzie $$ ( r_1, \ldots, r_k ) + ( s_1, \ldots, s_k) = ( r_1 + s_1, \ldots, r_k + s_k ) $$,  
$$ ( r_1, \ldots, r_k ) \cdot ( s_1, \ldots, s_k) = ( r_1 \cdot s_1, \ldots, r_k \cdot s_k ) $$  
( tzw. dodawanie (mnożenie) po osiach ).
{:.def}

Załóżmy, że $$ R_1, \ldots, R_k $$ są pierścieniami. Wtedy:  
1. $$ R_1 \times \ldots \times R_k $$ jest zawsze pierścieniem.  
2. Jeśli $$ R_1, R_2, \ldots, R_k $$ są przemienne, to pierścień $$ R_1 \times R_2 \times \ldots \times R_k $$ też jest przemienny.  
3. Jeżeli $$ R_1, R_2, \ldots, R_k $$ mają jedności, to pierścień $$ R_1 \times R_2 \times \ldots \times R_k $$ też ma jedność.
{:.fact}

$$ f: R \rightarrow S $$ jest homomorfizmem $$\Leftrightarrow \forall_{x,y \in R }\ f( x +_R y ) = f(x) +_S f(y)$$ i $$\forall_{x,y \in R }\ f( x \cdot _R y ) = f(x) \cdot _S f(y) $$
{:.def}

Niech $$ R_1, \ldots, R_k $$ będę pierścieniami, a $$ F_1: R \rightarrow R_1,\ldots, F_k: R \rightarrow R_k $$ będą homomorfizmami pierścieni. Wówczaś funkcja $$ F: R \rightarrow R_1 \times R_2 \times \ldots \times R_k $$ zadana wzorem $$ F(r) = (F_1(r), \ldots, F_k(r) ) $$ też jest homomorfizmem.
{:.fact}

Niech liczby $$ m_1, \ldots, m_k $$ będą parami względnie pierwsze i niech $$ m = m_1 \cdot \ldots \cdot m_k $$. Wtedy funkcja $$ F: \mathbb{Z} _m \rightarrow \mathbb{Z}_{m_1} \times \ldots \times \mathbb{Z}_{m_k} $$ dana wzorem $$ F(z) = ( r_{m_1}(z), \ldots, r_{m_k}(z) ) $$ jest izomorfizmem pierścieni.
{:.theorem}

## Chińskie twierdzenie o resztach

<div class="def" markdown="1">
Jeśli $$ m_1, m_2, \ldots, m_k $$ są parami względnie pierwsze oraz $$ m = m_1 \cdot m_2 \cdot \ldots \cdot m_k $$ i $$ a_1, \ldots, a_k \in \mathbb{Z} $$, to istnieje $$x \in \mathbb{Z} $$ taki, że:

$$ (*) \begin{cases} x \equiv a_1 (mod\ m_1 ) \\ \vdots \\ x \equiv a_k(mod\ m_k) \end{cases} $$

Ponadto jest tylko jedno rozwiązanie $$ x_0 $$ układu równań $$(*)$$ w zbiorze $$ {0,\ldots, n-1}$$. Każde inne rozwiązanie jest postaci $$ x_0 + l \cdot m $$, dla \\( l \in \mathbb{Z} \\)
</div>

### Metoda rozwiązywania układu $$(*)$$:  
Niech $$ z_i = \frac{m}{m_i} = m_1 \cdot m_2 \cdot \ldots \cdot m_{i-1} \cdot m_{i+1} \cdot \ldots \cdot m_k $$. Znajdujemy takie $$y \in \mathbb{Z} $$, że $$ z_i \cdot y_i \equiv 1( mod\ m_1) $$ Wówczas $$ x = a_1 z_1 y_1 + a_2 z_2 y_2 + \ldots + a_k z_k y_k $$ jest rozwiązaniem układu, bo $$ x \equiv a_i z_i y_i \equiv a_i (mod\ m_i ) $$

## Pierścienie wielomianów

**Stopień wielomianu**  
\\( \deg( a_n x_n + \ldots + a_0 ) = n \\)  
\\( \deg( 0 ) = - \infty \\)
{:.def}

$$ \deg( 3x^2 + x + 1 ) = 2 $$  
$$ \deg(17) = 0 $$
{:.example}

<div class="def" markdown="1">
Dla $$ f(x) = a_nx^n + \ldots + a_0 \in R[x] $$ (gdzie $$ R[x] $$ to pierścień wielomianów o współczynnikach z R) definiujemy **funkcję wielomianową** $$ f: R \rightarrow R $$ za pomocą wzoru:

<script type="math/tex; mode=display">
\overline{f}(r) = a_nr^n + \ldots + a_0 \in R
</script>

**Uwaga:** Nie jest prawdą, że zawsze różne wielomiany definują różne funkcje wielomianowe.
</div>

**Uwaga:** Jeśli K jest ciałem nieskończonym, to z faktu, że $$ f(x), g(x) \in K[x] $$ są różne wynika, że $$ \overline{f} \neq \overline{g} $$.

Jeśli R jest pierścieniem przemiennym, to $$ \forall f,g \in R[x]\ ( \overline{f+g} = \overline{f} + \overline{g} \wedge \overline{f \cdot g} = \overline{f} \cdot \overline{g}) $$.
{:.fact}

<div class="fact" markdown="1">
Niech $$ f,g \in R[x], \deg(f) = m, \deg(g) = n $$. Wtedy:

1. \$$ \deg(f+g) \leq \max(m, n) $$
2. \$$ \deg(f \cdot g) \leq m+n $$
3. Jeśli R jest ciałem, to $$ \deg(f \cdot g) = m + n $$.
</div>

## Dzielenie wielomianów

Niech F będzie ciałem i niech $$ f,g \in F[x], g \neq 0 $$. Wtedy istnieją jedyne wielomiany $$ q,r \in F[x] $$ takie, że \\( \deg(r) \< \deg(q) \\) i $$ f = q \cdot g + r $$.  
Wielomian r nazywamy **resztą z dzielenia** f przez g.
{:.fact}

Mówimy, że wielomian $$ f \in R[x] $$ dzieli się przez $$ g \in R[x] $$, symbolicznie $$ g \mid f $$, gdy istnieje wielomian $$ h \in R[x] $$ taki, że $$ f = g \cdot h $$.
{:.def}

<div class="fact" markdown="1">
Niech F będzie ciałem. Wtedy dla dowolnych wielomianów $$ f, g \in F[x] $$:

1. \\( f \cdot g = c \neq 0 \\), f, g - stałe
2. Jeśli $$ f \mid g,\ g \mid f $$, to $$ f = c \cdot g $$ dla pewnego $$ c \in F $$.
</div>

<div class="def" markdown="1">
Niech F będzie ciałem. Mówimy, że $$ f \in F[x] \setminus F $$ jest **nierozkładalny** w $$F[x]$$, jeśli nie istnieją $$g, h \in F[x]$$ takie, że:

$$ f = g \cdot h $$ i \\( \deg(g), \deg(h) \< \deg(f) \\)

**Uwaga:** Każdy wielomian stopnia 1 jest nierozkładalny.
</div>

## Największy wspólny dzielnik

Niech $$f, g \in F[x]$$, F - ciało. **Największy wspólny dzielnik** f i g to dowolny wielomian $$ h \in F[x] $$, t. że $$ h \mid f $$ i $$ h \mid g $$ i o tej własności, że każdy wielomian dzielący f i g ma stopień mniejszy lub równy stopniowi h.
{:.def}

<div class="theorem" markdown="1">
Niech F będzie ciałem, a $$ f, g \in F[x],\ (f, g) \neq (0,0)$$. Wtedy mamy następujące stwierdzenia:

1. f, g mają przynajmniej jeden NWD o tej własności, że każdy inny wspólny dzielnik dzieli h.
2. NWD f i g jest jedyny z dokładnością do przemnożenia przez stałą ≠ 0.
3. Istnieją wielomiany p i q takie, że $$ pf + qg = h $$, gdzie h - dowolnie wybrany NWD f i g.
</div>

<div class="example" markdown="1">
Znaleźć NWD($$ x^3 + x^2 + 3x + 3,\ 2x^2 + 3x + 1 $$) w $$\mathbb{Z}_7[x]$$.

**Rozwiązanie:**  
Dzielimy jeden wielomian przez drugi:  
$$ x^3 + x^2 + 3x + 3 \div 2x^2 + 3x + 1 $$

Resztą z dzielenia jest $$ 5x+5 $$, więc jest to NWD f i g.  
Wszystkie NWD to wielomiany $$ c(x+1) $$ dla $$ c \in \mathbb{Z}_7 \setminus \{0\} $$.
</div>