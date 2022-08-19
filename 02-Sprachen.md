---
title: "Sprachen"
---

Sprachen sind für den Computer eine Ansammlung aus Zeichen und Grammatikregel,
die vorgeben wie die Zeichen verwendet werden können. Im Gegensatz zu
natürlichen Sprachen, kann der Computer die Sprache aber nicht interpretieren.
Das heisst dass nur Dinge ausgedruckt werden können, die in der Sprache
enthalten sind.

Normalerweise werden solche Sprachen formal definiert, dies ist für uns aber
nicht nötig, weil wir keine Programmiersprache entwickeln, sondern nur Sprachen
anschauen. Es reicht also wenn wir diese in natürlicher Sprache beschreiben.

::: {.example}
### Titel

Wenn eine Zeile mit 3 oder mehr `=`-Zeichen beginnt, dann ist die Zeile darüber
ein Titel und der Rest der Zeile wird ignoriert.

Mit dieser Definition können wir Titel in einem Text so darstellen:

```txt
Titel
===
```
:::

Das Beispiel funktioniert schon mal recht gut. Es gibt jedoch einige Probleme
damit. Zum Beispiel können wir mit der Definition die wir gewählt haben, keine
mehrzeiligen Titel erstellen. Überlegen Sie sich wieso das so ist.

## Innerhalb des Textes

Das Beispiel mit dem Titel zeigt wie man ein komplettes Textstück als Titel
benennen kann. Wenn Sie aber nur ein einzelnes Wort hervorheben möchten, dann
funktioniert die Idee von oben nicht. Dafür könnten wir die folgende Regel
aufstellen.

::: {.example}
### Text hervorheben

Text der zwischen den Zeichen `/` steht, soll hervorgehoben sein.

Mit der Definition von oben können wir nun unser Beispiel erweitern und Text
hervorheben.

```txt
Title
===

Dies ist Text mit einem /sehr/ wichtigen Wort.
```
:::

Auch diese Definition ist nicht optimal. Können Sie ein Beispiel konstruieren
welches ein Problem erzeugt?

# Anzahl möglicher Zeichen

Bei einer Sprache müssen wir immer auch festlegen welche Zeichen wir überhaupt
verwenden können. Wir haben bis jetzt einfach angenommen dass wir das komplette
Alphabet mit Gross- und Kleinbuchstaben verwenden können, sowie einige
Sonderzeichen. Für den Computer ist das aber nicht ganz klar. Da der Computer
Informationen nur in `0` und `1` speichern kann, brauchen wir eine gewisse
Anzahl von diesen Speicherelementen die dann zusammen einen Buchstaben
repräsentieren. Diese Anzahl soll immer gleich sein, und so klein wie möglich.

::: {.example}
## Bits und Bytes

Mit nur einem Bit, können wir 2 verschiedene Zustände anzeigen: `0` und `1`.
Mit 2 Bits, können bereits 4 Zustände angezeigt werden: `00`, `01`, `10` und
`11`.

Die Anzahl an Zuständen kann direkt berechnet werden, mit der Formel:
$2^{\texttt#Bits}$

Wenn wir 8 Bits zusammen nehmen, erhalten wir ein **Byte**. Ein **Byte** kann
$2^8 = 256$ Zustände anzeigen. Das reicht längstens um das ganze Alphabet und
noch einige Sonderzeichen anzuzeigen.
:::

Werden mehr Bits verwendet, kann es sein das viel Speicher *verschwendet* wird.
Wenn wir nur das Alphabet brauchen (keine Unterscheidung zwischen Klein- und
Grossbuchstaben) brauchen wir nur 26 Zeichen und noch einige Sonderzeichen. In
diesem Fall wären ganz viele Bits immer `0` und damit eigentlich verschwendet,
weil Sie keine Informationen enthalten. Wir können also die Anzahl an Bits
reduzieren, schränken uns damit aber in der Anzahl möglicher Zeichen ein.
