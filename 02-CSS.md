---
title: "Webseite gestalten mit CSS"
---

Webseiten werden mit **HTML** geschrieben und mit **CSS** gestaltet. Dabei gibt
man in **HTML** die Struktur, also den Aufbau einer Seite an, und mit **CSS**
bestimmt man dann wie die Seite am Ende aussehen soll. **CSS** steht für
**C**ascading-**S**tyle-**S**heet. Damit spricht man die Funktion von **CSS**
an. Bei **CSS** handelt es sich um eine Reihe von Regeln die auf ein Element
angewendet werden, je später eine Regel auftaucht, desto mehr Gewicht hat sie.
Man kann also Regeln die weniger spezifisch sind ganz einfach überschreiben.

::: {.example}
### Beispiel

Die einfachste Art **CSS** auf einer Webseite zu verwenden, ist mit dem
`<style>`-tag. Wir werden jedoch später mit einer eigenen Datei arbeiten, um
**HTML** und **CSS** gut voneinander trennen zu können.

Fügen Sie das folgende Code Snippet als letztes tag in Ihr `<head>`-tag ein:

```html
<style>
body {
    background: red;
}
</style>
```

Dieser Code sollte den Hintergrund von Ihrem Dokument *rot* einfärben.
:::

Wenn es zu **CSS** kommt, sind eigentlich alle Effekte die man sich vorstellen
kann offen. Alle modernen Webseite erreichen Ihr Design mit **CSS** oder
Sprachen die noch ein wenig mächtiger sind, aber am Ende auch in **CSS**
umgeformt werden. Also können Sie eigentlich alle Effekte die Sie auf Webseiten
sehen mit **CSS** nachbauen. **CSS** bietet auch die Möglichkeit von
Animationen, welche wir uns ein wenig später in dem Kapitel ansehen werden.
Wenn zu Interaktionen mit der Webseite kommt, dann wird meist noch die Hilfe
von Javascript benötigt. Viele Animationen kann man aber bereits über **CSS**
realisieren.

## Regeln in CSS

**CSS** ist eine Sammlung von Regeln die für eine bestimmte Webseite geladen
werden. Eine Regel ist immer wie folgt aufgebaut:

```css
ziel {
    eigenschaft: wert;
    eigenschaft: wert;
    eigenschaft: wert;
}
```

Mit `ziel` wird angegeben für welche Elemente diese Regel gelten soll. Wir
werden später noch komplexere Möglichkeiten lernen wie man Ziele angeben kann.
Für jetzt merken wir uns einfach das folgende. Ein Ziel ist der Name eines
*Tags*. Damit können wir schon einiges erreichen wenn unsere Webseite eine gute
Struktur hat. Beispielsweise können wir Stiele für alle `<h1>` festlegen, oder
wir können definieren wie `<strong>`-tags dargestellt werden sollen.

Mit `eigenschaft` können wir eine Eigenschaft (Property) von einem **HTML** Element
verändern. Man kann mit **CSS** jede Eigenschaft von einem Element ändern, und
es gibt so viele Eigenschaften, das Ihnen fast keine Grenzen gesetzt sind wenn
Sie möglichst viele Eigenschaften kennen. Aus dem Beispiel oben haben Sie
gesehen das es die Eigenschaft `background` gibt. Damit können Sie die Farbe
von einem Element setzen. Dabei gibt es Farben die bereits definiert sind, so
wie `red`. Sie können die Farben aber auch im Hexadezimalsystem als RGB angeben
(Beispiel Rot: `#ff0000`). Der Editor hilft Ihnen beim wählen einer Farbe,
ansonsten können Sie auf dieser [Webseite](https://rgbcolorcode.com/) den
Hexwert der gewünschten Farbe finden.

Neben `background` können Sie noch die Eigenschaft `color` setzen. Damit
sprechen Sie die Textfarbe von einem Element an.

## CSS Eigenschaften

Es gibt unzählige **CSS** Eigenschaften die Sie verwenden können. Je mehr Sie
kennen desto besser und schneller können Sie Ihre Webseite gestalten. Es lohnt
sich jedoch nicht eine komplette Liste mit allen Eigenschaften im Kopf zu
haben, denn Sie brauchen meist gar nicht so viele verschiedene um den
gewünschten Effekt zu erreichen. Am einfachsten ist es die verschiedenen
Eigenschaften [hier](https://www.w3schools.com/cssref/default.asp) abzulesen.
Die Liste ist jedoch sehr lange und eignet sich mehr wann man bereits weiss was
man möchte, aber nicht mehr genau weiss wie es funktioniert. Zum Einstieg ist
ein Cheatsheet wie das folgende besser geeignet:

::: {.center-fig}
<a href="http://www.pxleyes.com/blog/wp-content/uploads/2010/03/css-cheatsheet.pdf">
<img
src="http://www.pxleyes.com/blog/wp-content/uploads/2010/03/css-cheatsheet1.png"></a>
:::

::: {.exercise}
### Aufgabe

Testen Sie die verschiedenen Eigenschaften von dem **CSS**-Cheatsheet an Ihrer
Webseite aus.

Nicht alle Eigenschaften haben direkt eine visuelle Veränderung. Sind Sie also
nicht frustriert wenn einige Änderungen nicht direkt einen Effekt haben, das
kann durchaus das korrekte Verhalten sein.
:::

## CSS in eigener Datei

Damit wir **HTML** und **CSS** voneinander trennen können, lagern wir das
**CSS** in eine eigene Datei aus. Dazu müssen wir die Datei `style.css`
erstellen (falls diese noch nicht existiert) und diese dann mit diesem Tag

```
<link href="style.css" rel="stylesheet" type="text/css" />
```

ins **HTML** einbinden. Dazu einfach das Tag als letztes im `<head>` einfügen,
und wir können all unser **CSS** in der neuen Datei schreiben.

::: {.exercise}
### Aufgabe

Erstellen und verlinken Sie die Datei `style.css` so wie es oben beschrieben
ist.
:::

## Einfache Karte mit CSS

In diesem Teil entwerfen wir zusammen das **CSS** das Sie brauchen um eine
einfache Karte (Box) darzustellen. Karten sind ein häufig verwendetes Element
auf Webseiten, und können gestalterisch sehr stark wirken. Wir sind vor allem
daran interessiert, weil es uns eine sehr gute Basis gibt, und fast alle
Elemente die wir später brauchen können einführt.

::: {.exercise}
### Aufgabe

Stellen Sie sicher das Sie mindestens 1 `<p>`-tag auf Ihrer Webseite haben,
dann fügen Sie das folgende in Ihr `style.css` ein:

```css
body {
    background: lightgrey;
}

p {
    background: white;
    margin: 50px;
    padding: 30px;
}
```

Passen Sie die Werte so an das es für Sie gut aussieht.
:::

Wie Sie sehen führen wir 2 Regeln ein. Eine für den Hintergrund von `body` und
die andere Regel definiert wie alle `<p>` Tags aussehen sollen. Hier werden 2
sehr wichtige Eigenschaften verwendet `margin` und `padding`.

::: {.example}
### `margin`

Mit `margin` können Sie angeben wieviel Abstand Ihr Element zu anderen haben
soll. Wenn Sie einen spezifischen Rand ansprechen möchten, können Sie das mit
`margin-left`, `margin-right`, `margin-top` oder `margin-bottom` machen. Das
mit `-richtung` funktioniert bei allen Eigenschaften die eine Richtung haben.
:::

::: {.example}
### `padding`

Mit `padding` geben Sie an was für einen Abstand der Inhalt von Ihrem Element
zum Rand des Elements haben soll. Sie können auch hier die Richtung angeben,
oder eine Kurzform verwenden. Mit `padding: 30px 10px;` setzen Sie den oberen
und unteren Abstand auf `30px` und rechten und linken auf `10px`.
:::

::: {.exercise}
### Aufgabe

Testen Sie verschiedene Werte für `margin` und `padding` um ein Gefühl für
diese Eigenschaften zu bekommen.

Verwenden Sie auch andere Einheiten wie zum Beispiel `%`, `vh`, `vw`, `em` oder
`rem`.
:::

## Effekte und Animationen

Einige Effekte können mit **CSS** sehr einfach dargestellt werden.
Beispielsweise können Sie einen Effekt erzeugen wenn man mit der Maus über
einem Element ist.

::: {.exercise}
### Aufgabe

Fügen Sie den folgenden Code zu Ihrem `style.css` hinzu.

```css
p:hover {
  border: 1px solid black;
}
```

Ändern Sie den Code so ab, das der Effekt Ihrem Wunsch entspricht.

:::

## Pseudo-Selektoren

Wenn bei einer **CSS**-Regel etwas mit einem `:` beginnt, dann handelt es sich
um einen *Pseudo-Selektor*. Damit kann man Elemente gezielt ansteuern wenn
irgendwelche Ereignisse passieren. Das Ziel `p:hover` erzeugt Ihnen eine Regel
für `<p>`-tags die aktuell die Maus über sich haben. Das eignet sich sehr gut
um Elemente hervorzuheben, so wie es hier gemacht wurde.

Der *Pseudo-Selector* `:hover` ist sehr praktisch und kann häufig verwendet
werden, Weitere praktische sind `:link` und `:visited`. Eine vollständige Liste
gibt es [hier](https://www.w3schools.com/cssref/css_selectors.asp).

::: {.exercise}
### Aufgabe

Suchen Sie Selektoren aus der Liste von oben, und testen Sie diese. Wählen Sie
Selektoren aus die mit genau einem `:` beginnen.
:::

## Bessere Effekte

Damit die Übergänge nicht so ruckartig sind, können Sie die folgende
Eigenschaft verwenden:

```
p:hover {
    border: 1px solid black;
    transform: translateX(20px);
    transition: all 800ms;
}
```

Damit können Sie alle Übergänge in 800ms durchführen lassen. Das geht jedoch
nur wenn es einen Übergang hat. Sie sehen hier das der Rand direkt eingeblendet
wird. Das liegt daran das es vorhin keinen Rand hatte und deshalb kein Übergang
vorhanden ist. Das können Sie beheben indem Sie auf dem normalen `<p>` Element
noch einen weissen Rand hinzufügen.

::: {.exercise}
### Aufgabe

Beheben Sie das Problem mit dem Rand, so wie oben beschrieben.

Spielen Sie mit dem Code bis Sie eine Animation haben die Ihnen gefällt.
:::

## Klassen und IDs

Möglicherweise möchten Sie nicht das all Ihre `<p>` tags genau gleich sind.
Oder es gehen Ihnen irgendwann die *tags* aus und Sie können keine weiteren
Stiele mehr verwenden. Dafür gibt es **Klassen** und **IDs**. Dies sind
spezielle **HTML**-Attribute die Sie verwenden können um Ihr Dokument besser zu
gliedern, und mit **CSS** können Sie diese direkt ansprechen. Am meisten hilft
Ihnen hier das Attribut **Klasse**. Sie können sich überlegen das ein Teil von
Ihrer Webseite einen bestimmten Typ (**Klasse**) hat, und dieser wird in einer
besonderen Art dargestellt.

::: {.exercise}
### Aufagbe

Fügen Sie den folgenden Code in Ihrem **HTML** ein

```html
<div class="card">
some content...
</div>
```

Fügen Sie den folgenden Code in Ihr **CSS** ein.

```css
.card {
    background: white;
    margin: 20px 50px;
    padding: 30px;
    box-shadow: 0px 2px 4px 2px darkgrey;
}

```
:::

Sie können Klassen in **CSS** ganz einfach mit `.klasse` ansprechen in dem Sie
einen Punkt vor den Namen der Klasse hängen. Das gibt Ihnen jetzt sehr viel
mehr Elemente die Sie ganz einfach unterscheiden können.

Wenn Sie das ganze auch mit **IDs** machen möchten, müssen Sie einfach eine `#`
im **CSS** vor die ID schreiben.

::: {.exercise}
### Aufgabe

Fügen Sie ein Element mit einer ID in Ihr **HTML** ein und mindestens eine
weitere **Klasse**. Erstellen Sie **CSS** Regeln für diese Elemente, und
gestalten Sie diese.
:::

## Das `<div>`-Tag

Das wohl am meisten gebrauchte Tag ist das `<div>`. Es wird als Container
verwendet um andere Elemente zu packen und sie dann mit **CSS** zu gestalten.
Zum Beispiel kann man mit dem folgenden **CSS** Code ein einfaches
Spaltenlayout realisieren.

```css
.column {
  width: 40%;
  margin: 20px 4%;
  display: inline-block;
}
```

Wichtig ist hier die Eigenschaft `display`. Wie diese genau funktioniert kann
[hier](https://www.w3schools.com/CSSref/pr_class_display.asp) nachgelesen
werden. Praktisch ist die Eigenschaft `display: flex`, alles dazu kann
[hier](https://www.w3schools.com/css/css3_flexbox.asp) nachgelesen werden.

::: {.exercise}
### Aufgabe

Erstellen Sie eine Navigationsseitenliste die Flexbox verwendet.
:::

::: {.exercise}
### Aufgabe

Arbeiten Sie das folgende Tutorial durch, und benutzen Sie alles was Sie davon
brauchen können für Ihre Webseite.

[CSS Tutorial](https://www.w3schools.com/css/default.asp)
:::
