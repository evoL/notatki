---
title: Twierdzenie Eulera, chińskie twierdzenie o resztach, pierścienie wielomianów
---

# Twierdzenie Eulera, chińskie twierdzenie o resztach, pierścienie wielomianów

Jeśli \\( (R, +, \cdot) \\) jest pierścieniem z \\(1\\), to zbiór elementów odwracalnych ( względem \\(\cdot\\) ) pierścienia \\(R\\) oznaczamy przez \\( R^* \\) i wówczas \\( (R^*,+,\cdot) \\) jest grupą.
{:.fact}

## Funkcja i twierdzenie Eulera

**Funkcja Eulera** \\( \varphi : \mathbb{N} \rightarrow \mathbb{N}_+ \\) zdefiniowana jest nasŧepująco:  
\\( \varphi (m) = \\) ilośc liczb naturalnych mniejszym od \\(m\\) i względnie pierwszych z \\(m\\).  
$$ \varphi (m) = | \mathbb{Z}^{*}_{m} | $$, gdzie $$ \mathbb{Z}_{m}^{*} $$ - elementy odwracalne \\(<m\\).
{:.def}
 
Jeśli $$ m= p_{1}^{\alpha _1} \cdot \ldots \cdot p_{k}^{ \alpha _k} $$ jest rozkładem liczby na czynniki pierwsze, to:  
$$ \varphi (m) = ( p_{1}^{\alpha_1} - p_{1}^{\alpha_0} ) \cdot \ldots \cdot ( p_{k}^{\alpha_k} - p_{k}^{\alpha_{k-1}}) = m(1- \frac{1}{p_1} \cdot \ldots \cdot (1- \frac{1}{p_k} ))$$
{:.theorem}

**Twierdzenie Eulera:**  
Jeśli liczby \\( a \in \mathbb{Z} \\) i \\( m \in \mathbb{N}_+ \\) są względnie pierwsze, to $$ a^{ \varphi (m) } \equiv 1(mod\ m) $$.
{:.theorem}

**Uwaga:**  
Gdy m jest liczbą pierwszą, to dostajem małe twierdzenie Fermata, bo \\( \varphi (p) = p -1 \\).

##Produkty pierścieni

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

Jeśli $$ m_1, m_2, \ldots, m_k $$ są parami względnie pierwsze oraz $$ m = m_1 \cdot m_2 \cdot \ldots \cdot m_k $$ i $$ a_1, \ldots, a_k \in \mathbb{Z} $$, to istnieje $$x \in \mathbb{Z} $$ taki, że:  
$$ (*) \begin{cases} x \equiv a_1 (mod\ m_1 ) \\ \vdots \\ x \equiv a_k(mod\ m_k) \end{cases} $$  
Ponadto jest tylko jedno rozwiązanie $$ x_0 $$ układu równań $$(*)$$ w zbiorze $$ {0,\ldots, n-1}$$. Każde inne rozwiązanie jest postaci $$ x_0 + l \cdot m $$, dla \\( l \in \mathbb{Z} \\)
{:.def}

###Metoda rozwiązywania układu $$(*)$$:  
Niech $$ z_i = \frac{m}{m_i} = m_1 \cdot m_2 \cdot \ldots \cdot m_{i-1} \cdot m_{i+1} \cdot \ldots \cdot m_k $$. Znajdujemy takie $$y \in \mathbb{Z} $$, że $$ z_i \cdot y_i \equiv 1( mod\ m_1) $$ Wówczas $$ x = a_1 z_1 y_1 + a_2 z_2 y_2 + \ldots + a_k z_k y_k $$ jest rozwiązaniem układu, bo $$ x \equiv a_i z_i y_i \equiv a_i (mod\ m_i ) $$

## Pierścienie wielomianów:

**Stopień wielomianu:**  
\\( deg( a_n x_n + \ldots + a_0 ) = n \\)  
\\( deg( 0 ) = - \infty \\)

Przykład:  
$$ deg( 3x^2 + x + 1 ) = 2 $$  
$$ deg(17) = 0 $$

##CIĄG DALSZY NASTĄPI