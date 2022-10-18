---
title: "Einführung in Javascript"
---

Bis jetzt haben Sie gelernt wie man eine Webseite mit **HTML** strukturieren
kann und Sie haben gesehen wie man eine Webseite mit **CSS** gestalten kann.
Mit diesen beiden Elementen sind Webseiten aber noch immer statisch, heisst die
können damit nicht richtig interagieren. Sie können auf einen Link klicken um
auf die nächste Seite zu kommen, mehr ist aber zur Zeit noch nicht möglich.

Mit **Javascript** können Sie Interaktivität und Logik zu Ihrer Webseite
hinzufügen.

::: {.example}
### Beispiel

Ein einfaches Beispiel von etwas was Sie in jeder Programmiersprache machen
möchten, ist eine Ausgabe an den Benutzer zu machen. Die einfachste Form dies
in **Javascript** zu machen, ist indem Sie diesen Codeblock ans Ende Ihrer
**HTML**-Datei anhängen, gleich bevor das `<body>`-tag geschlossen wird.

```html
<script>
alert("Hello World!");
</script>
```

Mit diesem Code sagen Sie dem Browser das er die Funktion `alert()` mit dem
Argument `"Hello World!"` ausführen soll. Das Resultat ist das Sie ein
Popup-Fenster mit der Nachricht `"Hello World!"` bekommen.
:::

Das folgende Video gibt eine kurze Einführung in Javascript und wie es im
Browser verwendet wird.

::: {.video}
<iframe width="560" height="315"
src="https://youtube.com/embed/a48u6kfB1bY"
frameborder="0" allow="accelerometer; autoplay; clipboard-write;
encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
:::


Mit diesen Popup-Fenstern zu arbeiten ist jedoch mühsam, deshalb gibt es die
Möglichkeit die Ausgabe auf eine *Konsole* zu schreiben. Diese ist
normalerweise für den Benutzer auch nicht sichtbar, Entwickler haben jedoch die
Möglichkeit damit zu arbeiten.

::: {.example}
### Beispiel

Überschreiben Sie das `<script>`-tag mit dem Codeblock von hier und führen die
Webseite nochmals aus.

```html
<script>
console.log("Hello World!");
</script>
```

Sie sollten nun die Ausgabe `"Hello World!"` in dem *Konsolen*fenster unter
Ihrer Webseite sehen.
:::

## Javascript in eigene Datei auslagern

Wie bereits bei **CSS** möchten Sie auch Ihr **Javascript** möglichst getrennt
vom Rest haben. Deshalb gibt es auch hier wieder die Möglichkeit den Code in
eine eigene Datei auszulagern.

::: {.exercise}
### Aufgabe

Erstellen Sie eine neue Datei `script.js`. Und fügen Sie den folgenden Inhalt
ein.

```javascript
console.log("Hello World!!");
```

Damit die Webseite Ihr Skript auch ausführen kann, müssen Sie dieses noch
laden. Dazu können Sie Ihr `<script>`-tag mit dem folgenden Code überschreiben.

```html
<script src="script.js"></script>
```
:::

Das folgende Video beschreibt wie Sie eine Datei auslagern können. Schauen Sie
es gut an, es erklärt zusätzliche Konzepte die im Text schwer zu erklären sind.

::: {.video}
<iframe width="560" height="315"
src="https://youtube.com/embed/mQGc0CKsDP8"
frameborder="0" allow="accelerometer; autoplay; clipboard-write;
encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
:::

## Elemente auswählen

Nur Text auf die *Konsole* zu schreiben ist ja nicht so spannend. Mehr
Interaktivität bekommen Sie wenn Elemente die auf Ihrer Webseite sind auswählen
können, und diese manipulieren.

::: {.example}
### Beispiel

Lesen Sie das erste `<h1>`-tag auf Ihrer Webseite aus und schreiben Sie den
Inhalt auf die *Konsole*. Das können Sie mit dem folgenden Code erreichen.

```javascript
const titleText = document.querySelector("h1").textContent;
console.log(titleText);
```
:::

Im folgenden Video wir erklärt wie das mit dem auswählen der Elemente
funktioniert und das Konzept von Variablen kurz beschrieben.

::: {.video}
<iframe width="560" height="315"
src="https://youtube.com/embed/7tUz08mjoRc"
frameborder="0" allow="accelerometer; autoplay; clipboard-write;
encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
:::

## Einstieg ins Programmieren

Hier machen Sie schon sehr viel was mit Programmieren zu tun hat und es ist
wichtig das Sie verstehen was hier passiert. 

- Sie erstellen eine neue Variable mit dem Namen `titleText`.
- Sie wählen den Inhalt des ersten `<h1>`-tags auf der Webseite aus.
- Sie speichern diesen Inhalt in der Variable `titleText`
- Sie geben den Wert den Sie in der Variable `titleText` gespeichert haben auf
  die *Konsole* aus.
  
::: {.exercise}
### Aufgabe

Hier ist ganz schön viel passiert. Diskutieren Sie mit Ihrem Sitznachbarn was
jeder von diesen Schritten genau bedeutet.

Ändern Sie den Code ab um damit herum zu spielen (Sie könnten zum Beispiel das
erste `<p>`-tag auf Ihrer Webseite suchen, und den Inhalt von diesem ausgeben).
:::

## Inhalt von Elementen ändern

Können den Inhalt von Elementen nicht nur auslesen, sondern auch setzen. Das
bedeutet Sie können den Inhalt der Seite ändern nachdem Sie die Seite bereits
erstellt haben.

::: {.example}
### Beispiel

Sie möchten den Inhalt von Ihrem ersten Titel auf `Hello World!` setzen. Das
können Sie mit dem folgenden Code erreichen.

```javascript
document.querySelector("h1").textContent = "Hello World!";
```
:::

Im nachfolgenden Video wird erklärt wie Sie Inhalte auf Ihrer Webseite auch
abändern können.

::: {.video}
<iframe width="560" height="315"
src="https://youtube.com/embed/9V-56Ej_Dxc"
frameborder="0" allow="accelerometer; autoplay; clipboard-write;
encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
:::


## Funktionen

**Javascript** basiert auf **Funktionen**. Sie können sich **Funktionen** als
ein Stück Code vorstellen das ausgeführt wird man es aufgerufen wird. Sie
können also einen Teil Ihres Programms in einem Codeblock speichern, den Sie
später wieder verwenden können. Das praktische daran ist vor allem dass Sie
diesen Code auch mehrfach verwenden können, ohne diesen immer neu zu schreiben.

::: {.example}
### Beispiel

Der folgende Block von Code gibt Ihnen eine Funktion mit dem Namen `test` die
danach direkt aufgerufen wird.

```javascript
function test() {
    var titleText = document.querySelector("h1").innerHTML;
    console.log(titleText);
}

test();
test();
```

Sie sollten nun den Inhalt von Ihrem Titel 2mal in der *Konsole* sehen.
:::

## Ausführen auf Befehl

Um richtig mit einer Webseite zu interagieren, möchten Sie Code erst ausführen
wenn der Benutzer etwas macht, wie ein Element anzuklicken. Fügen Sie dazu den
folgenden Code in Ihre Webseite ein. Am besten fügen Sie den **HTML**-Code
direkt unter Ihrem ersten `<h1>`-tag ein.

```html
<button onclick="test()">Test</button>
```

Überschreiben Sie ausserdem den Inhalt von `script.js` mit dem folgenden Code.

```javascript
function test() {
    document.querySelector("h1").innerHTML = "Titel wurde angeklick!";
}
```

Wenn Sie nun auf den Button klicken, sehen Sie das sich der Titel ändert. Im
Video wird gleich erklärt wie das ganze funktioniert.

::: {.video}
<iframe width="560" height="315"
src="https://youtube.com/embed/RH3g8pA2M_g"
frameborder="0" allow="accelerometer; autoplay; clipboard-write;
encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
:::

::: {.example}
### Beispiel: Zähler erstellen

Sie können auch einen einfachen Zähler erstellen. Mit dem folgenden Code können
Sie einen Zähler auf Ihrer Webseite erstellen.

```javascript
var counter = 0;

function increaseCounter() {
    counter = counter + 1;
    var elem = document.querySelector("#counter");
    elem.innerHTML = counter;
}
```

Damit Sie die Funktion auch verwenden können, brauchen Sie zusätzlich noch
diesen HTML Code.

```html
<div>
    <span id="counter">0</span>
    <button onclick="increaseCounter()">+1</button>
</div>
```
:::

Generell schreiben Sie also Code in Funktionen und diese Funktionen können Sie
dann über das `onclick`-Attribut von Buttons (oder auch anderen Elementen)
ausführen lassen.

::: {.exercise}
### Aufgabe

Erstellen Sie eine Funktion `decreaseCounter()` und einen Button der diese
Funktion aufruft. Die Funktion soll den Zähler um eines vermindern.
:::

### Scoping

In Javascript sind Variablen und Funktionen in eigene Umgebungen abgetrennt
(Scoping). Die Variable `counter` aus dem Beispiel von oben, ist im globalen
Scope. Das bedeutet sie ist überall verfügbar. Die Variable `elem` aus der
Funktion `increaseCounter` ist nur innerhalb von dieser Funktion verfügbar,
sie kann in anderen Funktionen also nicht verwendet werden.

Wenn man eine Variable nun an eine andere Funktion übergeben muss, kann man
dies mit Funktionsparametern (Argumenten) machen.

Bevor Sie sich das Beispiel anschauen, schauen Sie sich das Video an, und
machen Sie sich dann an dem Beispiel klar dass Sie verstanden haben wie das mit
dem Scoping funktioniert.

::: {.video}
<iframe width="560" height="315"
src="https://youtube.com/embed/cR5bT_cetI8"
frameborder="0" allow="accelerometer; autoplay; clipboard-write;
encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
:::

::: {.example}
### Beispiel

Sie haben 2 Funktionen gegeben. Von der ersten Funktion möchten Sie die zweite
aufrufen und den Wert der Variable `value` in der zweiten Funktion verwenden.
Das Können Sie mit folgendem Code ganz einfach erreichen.

```javascript
function first() {
    var value = 17;
    console.log(`Der Wert von value in der Funktion 'first' ist ${value}.`);
    second(value);
    
}

function second(val) {
    console.log(`Der Wert von value in der Funktion 'second' ist ${val}.`);
}
first()
```
:::

## Parameter

Parameter oder oft auch Argumente genannt, können als Variablen verstanden
werden, die einer Funktion übergeben werden. Sie müssen im Kopf der Funktion
definiert werden, damit klar ist welches die Parameter sind. Beim aufrufen der
Funktion werden Sie dann in den Klammern an die Funktion übergeben. Wenn
mehrere Parameter verwendet werden, werden diese einfach mir Kommas getrennt.

::: {.exercise}
### Aufgabe

Schreiben Sie eine Funktion die 3 Parameter hat, und rufen Sie diese Funktion
auf.
:::

## Arbeiten mit Funktionen

Wie Sie bereits wissen läuft in Javascript alles über Funktionen. Das bedeutet
Sie sollten auch in Funktionen denken wenn Sie Ihren Code erstellen. Funktionen
kapseln einen kleinen Teil Ihrer Logik in ein Programm und können immer wieder
verwendet werden. Mit Parametern können sich Funktionen auch anders verhalten
und Parameter können von Funktion zu Funktion weitergegeben werden. Daher ist
es wichtig das Sie Ihren Code in möglichst kleine Stücke unterteilen und wenn
immer möglich Parameter verwenden. Zusätzlich haben Sie den Code dann auch
gerade dokumentiert, denn mit den Funktionsnamen können Sie immer gleich
beschreiben was in der Funktion passiert.

::: {.exercise}
### Aufgabe

Schreiben Sie den Counter den Sie oben erstellt haben so um, das keine globale
Variable mehr verwendet wird. Fügen Sie ausserdem eine Funktion und einen
Button hinzu, welche den Counter auf 0 setzen.

**Tipp:** Mit der Funktion `parseInt(arg)` können Sie das `innerHTML` von einem
Element als `arg` übergeben. Wenn es eine Zahl ist, bekommen Sie eine Zahl
zurück.
:::

## Listen

Bisher haben wir immer nur das erste Element ausgelesen das einem
`querySelector` entspricht. Was ist aber wenn wir mehrere Elemente haben
möchten? Wir können dann die Funktion `document.querySelectorAll()` verwenden,
und bekommen eine Liste zurück.

::: {.example}
Wenn wir wissen möchten wieviele `<p>`-Tags auf unserer Seite sind, können wir
das mit dem Code unten erreichen.

```javascript
function countElements(selector) {
    var elements = document.querySelectorAll(selector);
    console.log(`Es gibt ${elements.length} Elemente für den Selektor '${selector}'`);
}

countElements("p");
```
:::

Die Länge einer Liste, wieviele Elemente sie enthält, können Sie mit `.length`
bestimmen. Das kann sehr praktisch sein wenn Sie bis zum Ende einer Liste
zählen möchten.

## Schleifen

Wenn Sie über alle Elemente einer Liste iterieren möchten, können Sie dies mit
Schleifen machen. Sie können generell auch Schleifen zum zählen verwenden,
meist werden Sie aber für Listen gebraucht.

Das folgende Video erklärt das Beispiel das nachher folgt. Kopieren Sie den
Code von dem Beispiel, und versuchen Sie dem Video zu folgen.

::: {.video}
<iframe width="560" height="315"
src="https://youtube.com/embed/LqtyFqWI19c"
frameborder="0" allow="accelerometer; autoplay; clipboard-write;
encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
:::

::: {.example}
### Beispiel

Sie möchten den Inhalt von allen `<h2>`-tags auf Ihrer Seite auf die
Kommandozeile schreiben.

```javascript
function printElements(selector) {
    var elements = document.querySelectorAll(selector);
    console.log(`Es gibt ${elements.length} Elemente für den Selektor '${selector}'`);
    for( var i = 0; i < elements.length; i = i + 1 ) {
        var elem = elements[i];
        console.log(elem.innerHTML);
    }
}

printElements("h2");
```

Mit der `for`-Schlaufe können Sie die Variable `i` von `0` bis zur Länge der
Liste zählen, dabei wird in jedem Durchlauf das `i` um `1` erhöht.

Mit `elements[i]` sagen Sie das Sie den Eintrag an der Stelle `i` in der Liste
haben möchten.
:::

::: {.exercise}
### Aufgabe

Schreiben Sie eine Funktion die all Ihre `<p>`-tags zu 
`<div class="paragraph">`-tags umwandelt.

**Tipp:** Lassen Sie sich `.outerHTML` von all Ihren `<p>`-tags anzeigen.
:::

## Einfaches Spiel mit Webseiten

Sie können mit Webseiten und vor allem mit **Javascript** einige Spieltypen ganz
einfach entwickeln. Beispielsweise ein rundenbasiertes Kampfsystem muss nur die
Werte vom Spieler und Gegner anzeigen können und ein paar Buttons für die
Spieleraktionen haben. Das können Sie ganz einfach als Webseite schreiben. Wenn
Sie dann noch ein wenig **CSS** verwenden, kann Ihr Spiel sogar noch gut
aussehen.

::: {.exercise}
### Aufgabe

Schreiben Sie ein Spiel als rundenbasiertes Kampfsystem. 

- Es gibt einen Gegner und einen Spieler
- Der Gegner greift jede Runde an
- Der Spieler kann sich heilen oder angreifen
- Das Spiel ist nach 10 Runden vorbei, ist der Gegner nicht besiegt, hat der
  Spieler verloren.
  
**Tipp:** Mit dem folgenden Code bekommen Sie eine Zufallszahl.

```javascript
function getRandomInt(min, max) {
  return Math.floor(Math.random() * (max - min + 1) ) + min;
}

rand = getRandomInt(20, 32);
console.log(rand);
```
:::
