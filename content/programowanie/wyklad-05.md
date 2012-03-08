---
title: Pamięć i wstęp do języków formalnych
---

# Pamięć i wstęp do języków formalnych

> *tu jest notatka z 1. godziny*

## Pewne aspekty składni formalnej

Mamy sobie **alfabet** \\( \Sigma \\), który jest skończonym, niepustym zbiorem. Przykładowy alfabet to ASCII, czy Unicode, ale one są duże. My będziemy brać mniejsze alfabety, bo prościej.

\\[ \Sigma = \{a, b\} \\]

Czym jest **słowo**? Słowem nazywamy skończony ciąg symboli alfabetu. Słowami na tym alfabecie są np. _a_, _aaaa_, _baba_.

Na alfabecie ASCII można zrobić większe słowa, jak np:

- int◡main()◡{⏎◡◡◡return◡0;⏎}
- trelemorele

Czym one się różnią? Jedne jest poprawnym programem w C, a drugie nie.

**Język** (nad alfabetem \\(\Sigma\\)) to pewien zbiór \\( L \subseteq \Sigma^* \\).

Jak w takim razie opisać języki. Dla prostych języków możemy opisać normalnie zbiory:
\\[
L_1 = \left\{ a^nb^n\ |\ n \in \mathbb{N} \right\} \\
L_2 = \left\{ (ba)^n\ |\ n \in \mathbb{N} \right\}
\\]

Jednak dla bardziej skomplikowanych języków (jak C) byśmy się zamęczyli na śmierć.

## Budujemy gramatyki

Słowo można budować jako drzewa. Ciekawostka: to słowo nazywa się akurat _zdanie_.

        zdanie
       /      \
    podmiot  orzeczenie
       |         |
      Jan       śpi

Chomsky wymyślił notację mówiącą, jak możemy takie drzewo budować.

    zdanie -> podmiot orzeczenie
    podmiot -> Jan
    orzeczenie -> śpi

Teraz tak:

- \\( \Sigma \\) - alfabet terminalny (zawiera symbole, z których finalnie będzie budowane słowo)
- \\( V \\) - alfabet nieterminalny (zbiór kategorii gramatycznych)
- \\( S \\) - symbol startowy \\( (S \in V) \\)
- \\( P \\) - produkcje (skończony zbiór reguł) - \\( P \subseteq V \times (\Sigma \cup V)^* \\)
- \\( G = <\Sigma, V, S, P> \\) - gramatyka bezkontekstowa
- \\( L(G) \\) - język generowany przez gramatykę G

Przykłady gramatyk:

- \\[
\Sigma = \{a,b\} \\
V = {S} \\
S \\
P = \{ S \rightarrow \epsilon,\ S \rightarrow a S b \} \\
L(\{\Sigma, V, S, P\}) = L_1
\\]
- \\[
\Sigma = \{a,b\} \\
V = {S} \\
S \\
P = \{ S \rightarrow \epsilon,\ S \rightarrow S\ ba \} \\
L(\{\Sigma, V, S, P\}) = L_2
\\]

## Definicje

**Drzewo wyprowadzania** to:

- drzewo o wierzchołkach wewnętrznych etykietowanych symbolami nieterminalnymi i liściach etykietowanych symbolami terminalnymi lub symbolem \\( \epsilon \\)
- w korzeniu jest symbol startowy
- jeśli (korzeń T pokazuje na x1, ... , xn) jest wierzchołkiem wewnętrznym, to \\( (T \rightarrow x_1 \ldots x_n) \in P \\)

Słowo wyprowadzane przez drzewo i ciąg symboli terminalnych występujących w drzewie w kolejności od lewej do prawej.

\\( L(G) \\) - zbiór słów, dla których istnieją drzewa wyprowadzania z G

## Składnia abstrakcyjna

Składnia abstrakcyjna służy nie do ustalenia notacji, lecz do ustalenia co coś znaczy.

Programy to nie są napisy, tylko **abstrakcyjne drzewa rozbiorów**. Jako że takie drzewa ciężko się wpisuje, używamy **składni konkretnej**. Tak samo jak istnieje wiele drzew reprezentujących to samo znaczenie, istnieje też wiele notacji reperentujących dane drzewo.

Składnię konkretną rozbija się zaś na dwie kolejne części: **strukturę leksykalną** i **strukturę gramatyczną**.

Struktura leksykalna to tak jakby tekst wejściowy ze wszystkimi znakami, które nie mają znaczenia dla znaczenia. Struktura gramatyczna powstaje poprzez _analizę leksykalną_, która polega właściwie na dzieleniu znaczących części tekstu na tokeny, takie jak _początek bloku_ czy _liczba 5_.

## Jednoznaczność gramatyki
Gramatyka jest **jednoznaczna**, jeżeli istnieje tylko jedno drzewo rozbioru dla każdego słowa.