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



