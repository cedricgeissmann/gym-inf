---
title: "Webseiten gestalten mit CSS"
---
Auf dem Netz haben Sie sicher schon sehr viele super animierte Webseiten
gesehen. Oft ist dies gar nicht so schwer zu erreichen, wenn man die
Grundprinzipien von CSS verstanden hat.

**CSS** steht für Cascading-Style-Sheet, und gibt Regeln an, mit denen man
Webseiten gestalten kann. Cascading bedeutet das Regeln die später geladen
werden, Regeln von früher überschreiben. Damit wir kein Chaos damit bekommen,
versuchen wir alles in einer Datei zu behalten und die Regeln einfach Stück für
Stück zu verfeinern.

::: {.video}
<iframe width="560" height="315"
src="https://www.youtube.com/embed/aHUN_tgLoqk"
frameborder="0" allow="accelerometer; autoplay; clipboard-write;
encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
:::

## Neue Datei `style.css`

Damit wir alles schön beisammen haben, und auch die Struktur von der
Darstellung getrennt ist, erstellen wir die neue Datei `style.css` und
verlinken diese im Head der HTML-Datei.

```html
<link rel="stylesheet" href="style.css">
```

Diese neue Datei enthält nun alle Anweisungen wie das Dokument am Ende aussehen
soll. Wir fügen mal diese paar Regeln ein:

```css
*, *::before, *::after {
    box-sizing: border-box;
}

h1 {
    background-color: magenta;
}
```

Das folgende Video erklärt wie die Regeln von oben funktionieren.

::: {.video}
<iframe width="560" height="315"
src="https://www.youtube.com/embed/yqQNRvSRfzU"
frameborder="0" allow="accelerometer; autoplay; clipboard-write;
encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
:::

## Referenzen für CSS

Hier sind einige Links aufgelistet die Ihnen helfen können mit CSS umzugehen.
Sie müssen diese nicht alle jetzt anschauen, es ist aber von Vorteil wenn Sie
wissen was Sie auf welchem Link finden.

- [Selektoren](https://www.w3schools.com/cssref/css_selectors.asp)
- [w3schools.com](https://www.w3schools.com/css/default.asp)
- [Cheat Sheet](http://www.pxleyes.com/blog/2010/03/most-practical-css-cheat-sheet-yet/)


## Das Box Model

In CSS wird das **Box Model** angewendet um die Grösse von allen Elementen zu
bestimmen. Das **Box Model** besteht aus 4 Schichten (Content, Padding, Border,
Margin). Kopieren Sie den folgenden CSS-Code um dem Video folgen zu können. Den
HTML-Code müssen Sie selber abschreiben.

::: {.code}
```css
*, *::before, *::after {
    box-sizing: border-box;
}

h1, h2 {
    background-color: magenta;
}

body {
    padding: 0;
    margin: 0;
}

.container {
    width: 100vw;
    height: 50vh;
    background-color: lightgrey;
    position: relative;
}

.box {
    border-color: black;
    border: 15px;
    border-style: solid;
    height: 50px;
    margin: 100px;
    padding: 30px;
    background-color: cyan;
}

.padding:hover {
    padding: 200px;
}

.margin:hover {
    margin: 10px;
}

.border:hover {
    border-color: white;
}
```
:::

Das folgende Video ist ein wenig länger und erklärt sehr viel Dinge
gleichzeitig. Am besten arbeiten Sie gleich mit dem Video mit, pausieren so oft
wie Sie das brauchen und passen den Code an, um das ganze besser zu verstehen.

::: {.video}
<iframe width="560" height="315"
src="https://www.youtube.com/embed/Y9Hc7Rx61vM"
frameborder="0" allow="accelerometer; autoplay; clipboard-write;
encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
:::

## Navigationsleisten

Auf Webseiten ist es üblich das man Navigationsleisten hat. Diese helfen dem
Benutzer schnell zu den jeweiligen Abschnitten zu kommen. Wir schauen uns an
wie man eine Navigationsleiste selbst erstellen kann und lernen dabei gleich
ein paar neue Konzepte zu CSS.

Kopieren Sie den folgenden Code, und ergänzen Sie die fehlenden IDs im
HTML-Code den Sie bereits haben.

::: {.code}
```html
<h2>Navbar</h2>
<div class="navbar">
    <ul>
        <li>
            <a href="#box-model">Box Model</a>
        </li>
        <li>
            <a href="#title">Titel</a>
        </li>
        <li>
            <a href="#sub-title">Untertitle</a>
        </li>
    </ul>
</div>
```
:::

Sie können hier dem Video folgen um das zugehörige CSS für Ihre
Navigationsleiste zu erhalten.


::: {.video}
<iframe width="560" height="315"
src="https://www.youtube.com/embed/90xMV3Xt8Pw"
frameborder="0" allow="accelerometer; autoplay; clipboard-write;
encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
:::

## Endprodukt

Wenn Sie all die Konzepte verstanden haben, können Sie in dem folgenden Video
noch das Beispiel von ganz am Anfang nachvollziehen und so anpassen das es
Ihnen gefällt.


::: {.video}
<iframe width="560" height="315"
src="https://www.youtube.com/embed/2exg3T6YaSo"
frameborder="0" allow="accelerometer; autoplay; clipboard-write;
encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
:::

::: {.exercise}
### Aufgabe

Erstellen und gestalten Sie eine Webseite über sich selbst. Verwenden Sie dafür
alle Techniken die Sie hier gelernt haben.
:::
