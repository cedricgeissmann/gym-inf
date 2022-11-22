---
title: "Bedingungen, Schleifen und Listen"
---

Beim programmieren ist es oftmals der Fall das man nicht immer alles genau gleich ausführen möchte. Meistens möchte man eine andere Ausführung wählen, wenn gewisse Werte erreicht werden, oder eben nicht. Man nennt dies Verzweigungen, weil sich der Code verzweigt. Gebräuchlicher ist der Name Bedingungen, weil ein Teil des Codes nur unter gewissen **Bedingungen** ausgeführt wird.

::: {.example}
### Beispiel

Wenn eine Zahl kleiner als 10 ist, möchten wir 5 dazu addieren, ansonsten nicht.

```javascript
let num = 8
if (num < 10) {
    num = num + 5
}
console.log(num)
```

Dieses einfach Beispiel soll die Syntax für die `if`-Bedingung zeigen. Der Ausdruck in den `()`-Klammern nennt man die Bedingung. Ist diese erfüllt wer der Code in den `{}`-Klammern ausgeführt, ansonsten nicht.
:::

Man kann auf alles mögliche überprüfen, das einzige was zählt, ist das ein Wert als `true` oder `false` zurück kommen muss. Es gibt verschiedene Operatoren mit denen man auf `true` oder `false` überprüfen kann. Sie können hier eine Liste finden: [https://www.w3schools.com/js/js_comparisons.asp](https://www.w3schools.com/js/js_comparisons.asp)

## Repository einrichten

Bevor wir mit Bedingungen weiter machen, setzen wir uns ein Repository auf. Dafür habe ich Ihnen bereits ein Repository vorbereitet. Sie finden dieses unter [https://github.com/cedricgeissmann/js-conditionals-loops-and-lists](https://github.com/cedricgeissmann/js-conditionals-loops-and-lists). Das nachfolgende Video zeigt wie Sie das Repository aufsetzen können, so das Sie es praktisch verwenden können.



::: {.video}
<iframe width="560" height="315"
src="https://www.youtube.com/embed/vL1kvhs9Fl0"
frameborder="0" allow="accelerometer; autoplay; clipboard-write;
encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
:::


::: {.exercise}
### Aufgabe

Kopieren Sie diesen Codeblock in Ihre `script.js` Datei. Erweitern Sie den Code an der Stelle `// implement HERE` so dass es Ihnen sagt ob die eingegebene Zahl grösser, kleiner oder gleich der Zahl ist die Sie suchen.

```javascript
function aufgabe_01() {
    let numRead = parseInt(read())
    let num = 15

    // implement HERE
}
```
:::

Bedingungen sind ein wichtiges Werkzeug in der Informatik die man unbedingt können muss. Dabei ist es aber wichtig dass Bedingungen so einfach wie möglich geschrieben werden, denn diese sind oft eine Fehlerquelle wenn sie zu kompliziert werden. Eine gute Regel ist Ihren Code mit Kommentaren zu versehen, wie in dem folgenden Beispiel.

::: {.example}
### Kommentare als Hilfestellung

```javascript
function aufgabe_01() { // soll auf Knopfdruck ausgeführt werden
    let numRead = parseInt(read())  // liest die Eingabe als Zahl
    let num = 15  // gesuchte Zahl

    if (num < numRead) {  // gesuchte Zahl ist kleiner
        print("Die Zahl ist kleiner")
    } else if (num > numRead) {  // gesuchte Zahl ist grösser
        print("Die Zahl ist grösser")
    } else {  // muss die gesuchte Zahl sein
        print("RICHTIG!!!")
    }
}
```
:::

Eine noch bessere Regel ist die folgende. Der Code sollte so deutlich geschrieben sein das Kommentare nicht nötig sind. Das ist in dem Beispiel oben fast der Fall. Wenn die Variablen besser benennt sind, dann könnte man das ganze fast wie einen englischen Satz lesen. Immer wenn Sie das nicht können, sollten Sie Kommentare zum Code hinzufügen.

Oftmals kann es auch hilfreich sein, wenn Sie die Kommentare zuvor in den Code einfügen, und die Logik anhand der Kommentare implementieren. So können Sie zuerst Ihre Ideen aufschreiben und die Umsetzung später realisieren. Das strukturiert Ihren Code automatisch und gibt direkt eine Struktur vor.

::: {.example}
### Zuvor Kommentieren

Sie haben die Aufgabe Code zu schreiben, der von 0 bis zu der Zahl die Sie eingegeben haben zählen soll. Dabei soll jede Zahl ausgegeben werden. Eine erste Version von Ihrem Code könnte so aussehen:

```javascript
function aufgabe_02() {
    // Obergrenze von Eingabe auslesen
    let upperBound = parseInt(read())

    // Zähle von 0 bis zur Obergrenze
    // TODO: implement
}
```

Mit dem Codeblock haben Sie schon mal Ihre Ideen ausgelegt, jetzt müssen Sie nur noch wissen wie man zählen implementiert.
:::

## Schleifen

Es gibt im Programmieren verschiedene Arten von Schleifen. Die häufigsten beiden sind die `for`- und `while`-Schleifen. Man kann mit beiden Schleifenarten das gleiche erreichen, jedoch eignen sich die verschiedenen Schleifen für verschiedene Dinge besser von der Syntax her.

### Zählschleife (`for`-Schleife)

Die `for`-Schleife wird oft als Zählschleife bezeichnet, da sie von einer Startzahl bis zur Endzahl zählt. Das ist für unser Beispiel von oben sehr praktisch, wir verwenden diese also gleich.

::: {.example}
### Von 0 bis $n$ zählen

Wir stellen nun das Beispiel von oben fertig, und zählen von 0 bis zur eingegebenen Zahl.

```javascript
function aufgabe_02() {
    // Obergrenze von Eingabe auslesen
    let upperBound = parseInt(read())

    // Zähle von 0 bis zur Obergrenze
    for ( let i = 0; i < upperBound; i++) {
        print(i)
    }
}
```
:::

## Aufbau der `for`-Schleife

Eine `for`-Schleife ist sehr einfach aufgebaut. Sie besteht immer aus den 3 Teilen, wobei diese manchmal auch weggelassen werden. Die `;` müssen aber dennoch da stehen. Die generelle Syntax für eine `for`-Schleife sieht so aus:

```javascript
for( Initialisierung; Abbruchbedingung; Nachdurchlauf) {
    Blockcode
}
```

Hier ist eine Erklährung zu den einzelnen Teilen:

- **Initialisierung**: Die wir einmal ganz am Anfang der Schleife ausgeführt. Normalerweise gibt man hier an welche Variable hochgezählt wird, und mit welchem Wert diese beginnt.

- **Abbruchbedingung**: Diese Bedingung bestimmt wann die Schleife zu Ende ist. Solange diese nicht erfüllt ist, läuft die Schleife weiter. Meistens wird geprüft ob die Zählvariable kleiner als eine Obergrenze ist.

- **Nachdurchlauf**: Das wir immer ausgeführt wenn ein durchlauf der Schleife abgeschlossen ist. Normalerweise wird hier die Zählvariable um eins erhöht.

- **Blockcode**: Der Code der mit jedem Durchlauf der Schleife ausgeführt wird. Meistens wird hier die Zählvariable in irgend einer Form verwendet.

## Aufgaben

::: {.exercise}
### Aufgabe 3

Erstellen Sie eine Schleife die alle Zahlen von 0 bis $n$ mit 2 multipliziert.
:::

::: {.exercise}
### Aufgabe 4

Erstellen Sie eine Schleife die alle geraden Zahlen von 0 bis $n$ ausgibt.
:::

::: {.exercise}
### Aufgabe 5

Erstellen Sie eine Schleife die alle ungeraden Zahlen von 0 bis $n$ ausgibt.
:::

::: {.exercise}
### Aufgabe 6

Erstellen Sie eine Schleife die von $n$ bis 0 zählt. So das auch die 0 ausgegeben wird.
:::

## Solangedassschleife (`while`-Schleife)

Die Übersetzung ins Deutsch ist bei der `while`-Schleife ein wenig merkwürdig. Jedoch beschreibt es die Funktionsweise der `while`-Schleife sehr gut. Der **Blockcode** wird solange ausgeführt wie die Bedingung erfüllt ist. Sie können sich das wie eine Erweiterung der `if`-Bedingung vorstellen. Am besten schauen wir uns ein Beispiel an.

::: {.example}
### Beispiel `while`-Schleife

Wir führen den folgenden Code einfach mal aus, und interpretieren dann später was genau der Code macht.

```javascript
function example_while() {
    let numRead = parseInt(read())
    let origInput = numRead
    let num = 5
    let count = 0

    while (numRead >= num) {
        numRead = numRead - num
        count++
    }

    print(`${origInput} / ${num} = ${count} mit Rest ${numRead}`)
}
```

Der Code berechnet uns das Resultat der Division mit `num` und gibt auch gleich den Rest aus.
:::

Man hätte den Code auch mit einer `for`-Schleife schreiben können, aber es ist praktischer von der Denkweise her dies mit einer `while`-Schleife zu machen. Die beiden Schleifen können aber meistens ausgetauscht werden. Wir werden öfters `for`-Schleifen verwenden, weil diese praktisch sind um über Listen zu iterieren.

## Listen

Listen sind Daten die miteinander Verknüpft sind. Oftmals liegen die Daten im Speicher des Computers aneinander, was es sehr effizient macht auf einzelne Elemente einer Liste zuzugreifen. Beim Zugriff auf eine Liste sagen Sie dem Computer wo die Liste beginnt, und iwe weit er gehen muss um das gewünschte Element zu suchen.

::: {.example}
### Primzahlen bis 20

Im folgenden Beispiel haben wir alle Primzahlen bis zur Zahl 20.

```javascript
function example_primes() {
    // Liste der Primzahlen
    primes = [2, 3, 5, 7, 11, 13, 17, 19]

    print( primes[0] )
    print( primes[7] )
}
```

Der Code erstellt eine Liste der Primzahlen und gibt dann die erste und die achte Primzahl aus.
:::

Sie sehen an dem Code oben das die `[]`-Klammern für Listen gebraucht werden. Zum einen werden sie gebraucht um eine Liste zu erstellen, zum anderen brauchen Sie die `[]`-Klammern um auf Elemente aus der Liste zuzugreifen.

**ACHTUNG:** Man beginnt in fast allen Programmiersprachen bei 0 zu zählen. Das erste Element ist also das Element an der Stelle `0`.

## Länge von Listen

Listen haben immer eine Länge. Dies ist die Anzahl an Elementen in der Liste, man erhält diese mit `.length`. Möchten Sie also auf das letzte Element von einer Liste zugreifen, dann können Sie das mit dem folgenden Code machen. Es ist nützlich sic dieses Muster zu merken, da es erstaunlich oft auftritt.

::: {.example}
### Zugriff auf das letzte Element

Wir erweitern das Beispiel von oben, und greifen auf das erste und letzte Element der Liste zu.

```javascript
function example_primes() {
    // Liste der Primzahlen
    primes = [2, 3, 5, 7, 11, 13, 17, 19]

    // Erstes Element
    print( primes[0] )

    // Letztes Element
    print( primes[ primes.length - 1 ] )
}
```
:::

## Auf alle Elemente einer Liste zugreifen

Meistens wenn wir eine Liste haben, möchten wir etwas mit allen Elementen der Liste machen, nicht nur mit einem. Wenn Sie auf alle Elemente einer Liste zugreifen möchten, sagt man über eine Liste iterieren. Auch dies ist ein Muster welches Sie sich unbedingt merken sollen.

::: {.example}
### Zugriff auf alle Elemente einer Liste

Wir erweitern das Beispiel von oben noch weiter und iterieren über die gesamte Liste.

```javascript
function example_primes() {
    // Liste der Primzahlen
    primes = [2, 3, 5, 7, 11, 13, 17, 19]

    for (let i = 0; i < primes.length; i++) {
        print( primes[i] )
    }
}
```

Dieses Muster kommt in der Informatik so oft vor, das müssen Sie einfach auswendig können!
:::

Es gibt in der Informatik nicht viele Dinge die man auswendig können muss. Man kann in der Regel alles nachschauen oder durch überlegen rekonstruieren. Sie gewinnen aber sehr viel Zeit wenn Sie das Muster von oben auswendig lernen, da es so oft vor kommt. Sie sollten das Muster aber auch verstehen, denn oftmals gibt es kleine Änderungen.

::: {.exercise}
### Code analysieren und verstehen

Schauen Sie sich das letzte Beispiel nochmals genau an. Repetieren Sie gleich nochmals wie die `for`-Schleife funktioniert. Machen Sie sich klar was das `primes[i]` genau macht.
:::

## Mehr Aufgaben

Lösen Sie die folgenden Aufgaben.

::: {.exercise}
### Aufgabe 7

Kopieren Sie das Beispiel zu den Primzahlen. Geben Sie alle Primzahlen von der zweiten bis zur zweitletzen aus. Sie dürfen die Liste selbst nicht verändern.
:::

::: {.exercise}
### Aufgabe 8

Kopieren Sie das Beispiel zu den Primzahlen. Geben Sie jede zweite Primzahl aus. Sie dürfen die Liste dafür nicht verändern.
:::

::: {.exercise}
### Aufgabe 9

Kopieren Sie das Beispiel zu den Primzahlen. Geben Sie die Primzahlen in umgekehrter Reihenfolge zurück. Sie dürfen die Liste dafür nicht verändern.
:::

::: {.exercise}
### Aufgabe 10

Kopieren Sie das Beispiel zu den Primzahlen. Berechnen Sie die Summe aller Primzahlen in der Liste.
:::

## Zeichenketten und Listen

Zeichenketten (oder auf Englisch **Strings**) sind eine fundamentale Datenstruktur in der Informatik. Sie werden verwendet um mit Text zu arbeiten. In früheren Programmiersprachen gab es keine direkten Zeichenketten, sondern nur Listen von Zeichen. Damit zu arbeiten ist sehr aufwendig und anstrengend, es gibt aber die nötig Denkwerkzeuge um mit Zeichenketten zu hantieren. In Javascript verschwimmt die Grenze zwischen Zeichenkette und Liste von Zeichen sehr stark. Deshalb ist es für uns ganz wichtig uns klar zu machen womit wir arbeiten.

## Unterschied Zeichenkette und Liste von Zeichen

Ihnen mag nicht ganz klar sein weshalb man hier einen Unterschied macht, und es ist auch nicht ganz einfach diesen zu erklären. Am einfachsten können Sie es sich so merken: Müssen Sie einzelne Zeichen ändern, brauchen Sie eine **Liste**. Müssen Sie Zeichen nur lesen, dann reicht eine Zeichenkette.

::: {.example}
### Zeichenkette zu Liste

Der folgende Code liest eine Zeichenkette. Wir möchten den Buchsten an der zweiten Stelle ändern und das Resultat ausgeben.

```javascript
function example_string_to_list() {
    // Erstelle eine neue Zeichenkette
    let greeting = "Hallo"
    
    // Ändere das zweite Zeichen auf "e"
    greeting[1] = "e"
    print(greeting) // gib die Zeichenkette aus

    // Erzeuge eine Liste aus der Zeichenkette
    let greetingList = greeting.split("")
    // Ändere das zweite Zeichen auf "e"
    greetingList[1] = "e"
    // Setze die Liste zu einer Zeichenkette zusammen
    greeting = greetingList.join("")

    print(greeting) // gib die Zeichenkette aus
}
```

Sie sehen das bei ersten mal das `a` nicht durch ein `e` ersetzt wurde, beim zweiten mal aber schon. Es ist ein wenig iritierens das der Computer das erste zulässt, aber keine Änderung vornimmt. Das liegt einfach daran wie Javascript funktioniert. Wenn Sie Zeichen ändern möchten, dann arbeiten Sie immer mit Listen.
:::

## Die Funktionen `split` und `join`

Diese beiden Funktionen sind sehr nützliche Helfer. Sie ermöglichen es ganz einfach von Zeichenketten zu Listen zu konvertieren und umgekehrt. Diese beiden Funktionen können noch sehr viel mehr, aber für unsere Zwecke müssen Sie einfach mal dieses Verhalten auswendig lernen.

## Eine neue Zeichenkette erstellen

Wenn Sie eine neue Zeichnkette erstellen möchten, und Sie möchten diese aus einer anderen aufbauen, dann können Sie das mit einer neuen Liste machen. Das folgende Codestück zeigt wie man das erreicht.

::: {.example}
Wir möchten eine Zeichenkette lesen und diese Zeichen für Zeichen in eine neue Liste anfügen.

```javascript
function example_list_creation() {
    let orig = "Hallo" // ursprüngliche Zeichenkette
    let res = [] // Neue leere Liste. Hier hängen wir die Zeichen von orig an.

    // Über jedes Zeichen von orig iterieren
    for ( let i = 0; i < orig.length; i++ ) {
        res.push( orig[i] ) // Zeichen am Ende anhängen
    }

    // Liste in Zeichenkette umwandeln
    res = res.join("")
    print(res)
}
```

Das Beispiel scheint recht unnötig zu sein, da es eine komplizierte Art ist eine Zeichenkette zu kopieren. Es steckt jedoch sehr viel Flexibilität in dem Ansatz, da man Zeichen zum Beispiel nur unter bestimmten Bedingungen zur Zeichenkette hinzufügen kann, oder eine andere Version des Zeichens verwenden kann. Sie können Zeichen auch doppelt einfügen mit diesem Ansatz. Das werden Sie später bei den Aufgaben noch brauchen.
:::

## Noch mehr Aufgaben

Hier sind noch mehr Aufgaben an denen Sie üben können. Sie müssen nicht alle Aufgaben lösen und Sie müssen die Reihenfolge auch nicht beachten. Bevor Sie die Aufgaben lösen, schauen Sie sich alle einmal an und treffen Sie dann eine Auswahl. Erstellen Sie pro Aufgabe mindestens einen neuen Commit.

::: {.exercise}
### Aufgabe 11

Schreiben Sie ein Programm das Ihren Namen als Liste von Zeichen ausgibt.
:::

::: {.exercise}
### Aufgabe 12

Schreiben Sie ein Programm das überprüft ob in einer Eingabe das Zeichen `'x'`
vorkommt.
:::

::: {.exercise}
### Aufgabe 13

Schreiben Sie ein Programm welches überprüft ob die Eingabe kürzer wie 12
Zeichen ist, und länger wie 0.
:::

::: {.exercise}
### Aufgabe 14

Schreiben Sie ein Programm das jedes Zeichen in der Eingabe verdoppelt.
:::

::: {.exercise}
### Aufgabe 15

Schreiben Sie ein Programm das zählt wie viele Leerzeichen in Ihrer Eingabe
vorkommen.
:::

::: {.exercise}
### Aufgabe 16

Schreiben Sie ein Programm das alle Leerzeichen in der Eingabe mit dem Zeichen
`_` ersetzt.
:::

::: {.exercise}
### Aufgabe 17

Schreiben Sie ein Programm welches überprüft ob nach jedem `.` in der Eingabe
ein Leerzeichen kommt.
:::

::: {.exercise}
### Aufgabe 18

Schreiben Sie ein Programm welches die Eingabe umkehrt.
:::

::: {.exercise}
### Aufgabe 19

Schreiben Sie ein Programm das die Eingabe auf ein *Palindrom* überprüft.

**Hinweis**: Ein *Palindrom* ist eine Zeichenkette die vorwärts und rückwärts
gelesen das gleiche ergibt.
:::

::: {.exercise}
### Aufgabe 20

Ersetzen Sie alle Zeichen der Eingabe mit der Grossbuchstabenversion der
Zeichens.

**Hinweis:** Mit der Funktion `.toUpperCase()` können Sie die Grosbuchstabenversion eines Zeichens erhalten.
:::

::: {.exercise}
### Aufgabe 21

Ersetzen Sie alle Zeichen der Eingabe mit der Kleinbuchstabenversion der
Zeichens.
:::

::: {.exercise}
### Aufgabe 22

Ersetzen Sie alle Zeichen der Eingabe mit einem `$` bis Sie ein `k` lesen.
:::

::: {.exercise}
### Aufgabe 23

Ersetzen Sie alle Zeichen der Eingabe mit Grossbuchstaben, bis Sie einen
Grossbuchstaben lesen.
:::

::: {.exercise}
### Aufgabe 24

Hängen Sie den ersten Buchstaben der Eingabe vorne und hinten an die
Zeichenkette an.
:::

::: {.exercise}
### Aufgabe 25

Hängen Sie die ersten 3 Buchstaben der Eingabe vorne und hinten an die
Zeichenkette an. Überprüfen Sie dass die Zeichenkette mindestens 3 Zeichen
enthält.
:::

::: {.exercise}
### Aufgabe 26

Vertauschen Sie das erste und das letzte Zeichen einer Zeichenkette.
:::

::: {.exercise}
### Aufgabe 27

Vertauschen Sie das erste und das letzte Zeichen einer Zeichenkette. Dann das
zweite und das zweitletzte und so weiter, bis Sie in der Mitte angekommen sind.
:::

::: {.exercise}
### Aufgabe 28

Löschen Sie das Zeichen in der Mitte der Eingabe, wenn die Eingabe grösser als
10 oder ungerade ist.
:::

::: {.exercise}
### Aufgabe 29

Löschen Sie Zeichen aus der Mitte der Zeichenkette, bis 2 gleiche Zeichen in
der Mitte stehen.

**Hinweis:** Verwenden Sie eine `while`-Schleife.
:::
