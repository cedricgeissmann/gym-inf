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

TODO: Video Einführung Sprachen

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

TODO: Video zu Bits und Anzahl Zeichen.

# Eigene Sprache Definieren

Wir möchten nun eine eigene Sprache definieren. Dafür legen wir zuerst mal fest
wieviele Bits wir für die Sprache verwenden möchten / können. Das ganze
Alphabet mit Gross- und Kleinbuchstaben, umfasst 52 Zeichen. Wenn wir 6 Bits
verwenden, haben wir noch 12 Sonderzeichen die wir verwenden können. Wir
verwenden die folgende Liste an Sonderzeichen: `.,-_() "'!?:`.

Mit diesem Zeichensatz definieren wir noch die folgenden Regeln.

::: {.example}
### Regeln

Alle Regeln funktionieren wie folgt: Wird ein `(` gelesen, ist das erste Wort
dahinter, der Name der Regel. Eine Regel wird durch `)` geschlossen.

- **Titel**: `(title text)` der Text in der Klammer ist ein Titel.
- **Kursiv**: `(emph text)` der Text in der Klammer ist hervorgehoben.
- **Liste**: `(list -item 1 -item 2)` der Text in der Klammer ist eine Liste.
Einzelne Elemente der Liste werden mit `-` signalisiert und enden beim nächsten
`-` oder am ende der Liste.
- **Abschnitt**: `(par text)` der Text in der Klammer ist ein Abschnitt.
- **Bild**: `(img url)` die URL für ein Bild das im Internet verfügbar ist.
- **Link**: `(link text ? url)` der Text der angezeigt werden soll und die URL
  für diesen Link. Beide sind durch ein `?` getrennt.
:::

Mit den Regeln von oben können wir schon relativ komplexe Dokumente erstellen.
Es gibt aber noch einige Probleme mit diesen Regeln.

::: {.exercise}
### Aufgabe: Ein Dokument erstellen

Verwenden Sie die Regeln von oben um ein Dokument über ein Thema zu schreiben
das Sie interessiert. Das Dokument muss folgende Elemente enthalten:

- Einen Titel.
- Mindestens 3 Abschnitte die jeweils einen Untertitel haben.
- Mindestens 1 Abschnitt muss aus mehreren Absätzen bestehen.
- Eine Aufzählung in Form einer Liste. Jedes Element der Liste soll ein Wort
  hervorheben. Unterschiedlich wichtige Wörter sollen anders hervorgehoben
  werden.
- Mindestens ein Bild.
- Ein Link mit dem Text: *Wo kann ich mehr zum Thema finden?*
:::

Wie Sie in der Aufgabe gesehen haben, reichen die Regeln nicht aus um dieses
einfache Dokument zu erstellen. Geben Sie deshalb neue Regeln an, welche die
Sprache ergänzen und für dieses Dokument ausreichend sind. Diskutieren Sie Ihre
neuen Regeln in einer kleinen Gruppe (2-3 Personen) und halten Sie die
Erkenntnisse für sich fest.

## Eine eigene Sprache entwerfen

Sie sollen nun eine eigene Sprache entwerfen. Ihre neue Sprache soll sich
deutlich von der im letzten Beispiel unterscheiden. Sie sollen also eine eigene
Struktur wählen. Zudem haben Sie nur 5 Bits zur Verfügung, das heisst Sie
können nur 32 verschiedene Zeichen verwenden.

::: {.exercise}
### Aufgabe: Sprache definieren

Definieren Sie eine Sprache in der Art wie es oben gemacht wurde. Geben Sie an
welche Zeichen verwendet werden dürfen und wie die Sprache generell
funktioniert. Geben Sie dann die Regeln an, welche für diese Sprache gelten.
:::

Mit dieser neuen Sprache soll jetzt ein Dokument geschrieben werden, um zu
überprüfen ob die Sprache auch verwendbar ist und um eventuelle Fehler zu
korrigieren. Geben Sie dafür die Regeln und die Sprache an jemand anderes
weiter.

::: {.exercise}
### Aufgabe: Dokument erstellen

Erstellen Sie ein Dokument, zu einem beliebigen Thema, mit der Sprache die Sie
erhalten haben. Das Dokument soll die folgenden Elemente enthalten:

- Klein- und Grossbuchstaben.
- Einen Titel.
- Das Datum wo es geschrieben wurde.
- Den Autor.
- Mindestens 3 Abschnitte die jeweils einen Untertitel haben.
- Mindestens 1 Abschnitt muss aus mehreren Absätzen bestehen.
- Eine Aufzählung in Form einer Liste. Jedes Element der Liste soll ein Wort
  hervorheben. Unterschiedlich wichtige Wörter sollen anders hervorgehoben
  werden.
- Mindestens ein Bild.
- Logo der Institution für die Sie schreiben.
- Eine Liste von Ressourcen die Sie für Ihre Recherche verwendet haben. Nur der
  Titel der Ressource soll sichtbar sein.
:::

Geben Sie nun das Dokument und die Sprache an eine dritte Person weiter. Diese
Person versucht nun das Dokument zu interpretieren und auf fehlende Elemente in
der Sprache hinzuweisen oder wenn die Sprache falsch verwendet wurde.

::: {.exercise}
### Aufgabe: Dokument interpretieren

Sie verhalten sich nun wie ein Computer und interpretieren das Dokument das Sie
erhalten haben, zusammen mit der Sprache die Sie bekommen haben. Wenn Sie etwas
nicht interpretieren können, vermerken Sie das. Wenn die Sprache falsch
verwendet wurde, vermerken Sie das ebenfalls.
:::

Sie erhalten nun die Interpretation von dem Dokument mit Ihrer Sprache zurück.
Schauen Sie sich an wie gut das Dokument interpretiert werden konnte,
diskutieren Sie allfällige Unklarheiten in der Gruppe.
