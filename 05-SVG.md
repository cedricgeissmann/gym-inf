---
title: "Vektorgrafiken mit SVG"
---

Sie haben sicher schon mal davon gehört das Vektorgrafiken besser Skalieren wie
Pixelgrafiken. Falls nicht, haben Sie es jetzt gehört. Aber was sind denn
Vektorgrafiken überhaupt? Eine Grafik können wir ganz einfach als Bild oder
Abbildung von etwas verstehen. Dabei kann man zwischen Vektorgrafiken und
Pixelgrafiken unterscheiden. Eine Vektorgrafik beschreibt die Abbildung durch
eine Sprache und mit ein wenig Hilfe der Mathematik. Weil das Bild beschrieben
wird, ist es auch gut Skalierbar - man kann es vergrössern oder verkleinern
ohne Qualität zu verlieren. Ausserdem können Vektorgrafiken viel Speicher
einsparen, wenn es möglich ist die Abbildung einfach zu beschreiben.

Eine Pixelgrafik ist zum Beispiel ein Foto. Da wird jeder Bildpunkt mit seiner
Farbe kodiert und in eine Datei geschrieben. Wenn Sie eine solche Grafik
vergrössern möchten, dann kommt es sehr stark darauf an was für eine Auflösung
dass Sie gewählt haben, ansonsten wirkt das Bild sehr schnell verpixelt.
Pixelgrafiken sind also nicht richtig Skalierbar.

## Scalable Vector Graphics (SVG)

Eine Möglichkeit Vektorgrafiken zu beschreiben ist mit **SVG**. SVG
funktioniert sehr ähnlich wie **HTML** und kann auch direkt darin eingebunden
werden.

Das folgende Beispiel zeigt wie ein einfaches SVG mit einem Kreis erstellt
werden kann. Im nachfolgenden Video wird noch genauer erklärt wie das ganze
funktioniert.

```svg
<svg height="100" width="100">
    <circle cx="50" cy="50" r="50" fill="red" />
</svg>
```

::: {.video}
<iframe width="560" height="315"
src="https://www.youtube.com/embed/IidjpojV1Mk"
frameborder="0" allow="accelerometer; autoplay; clipboard-write;
encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
:::

::: {.exercise}
### Aufgabe

Erstellen Sie eine SVG-Grafik mit 300px Breite und 100px Höhe. Die Grafik soll
3 Kreise mit unterschiedlichen Farben haben. Die Kreise sind nebeneinander und
werden von rechts nach links immer wie kleiner.

**Tipp:** [Hier](https://www.w3schools.com/graphics/svg_circle.asp) können Sie
mehr über Kreise in SVG erfahren.
:::

## Weitere Formen

Sie sind nicht nur auf Kreise beschränkt, Sie können alle möglichen Formen
verwenden. Am einfachsten sind Vierecke und Linien. Im folgenden Beispiel
finden Sie Code der Ihnen ein Viereck und eine Linie zeichnet.

::: {.example}
```svg
<svg height="100" width="100">
    <rect x="25" y="25" width="50" height="25" fill="green" />
    <line x1="0" y1="0" x2="100" y2="100" stroke="blue" stroke-width="5" />
</svg>
```

**Tipp:** [Hier](https://www.w3schools.com/graphics/svg_rect.asp) finden Sie
Dokumentation für Rechtecke. Sie können in der Seitenleiste Links auch noch
weitere Formen finden.
:::

::: {.exercise}
Erstellen Sie eine Grafik mit mindestens 4 verschiedenen Formen. Jede Form soll
eine andere Farbe haben.
:::

## Dreiecke

Es gibt in SVG keinen direkten Befehl für Dreiecke, Sie können aber Polygone
zeichnen. Polygone sind einfach 2 dimensionale Körper mit mehreren Ecken /
Winkeln. Im folgenden Video wird ein Polygon als Beispiel gezeigt.

```svg
<svg height="100" width="100">
    <polygon points="0,0 50,100 100,0" fill="green" stroke="red" />
</svg>
```

::: {.video}
<iframe width="560" height="315"
src="https://www.youtube.com/embed/vp6NTzAhmKA"
frameborder="0" allow="accelerometer; autoplay; clipboard-write;
encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
:::

::: {.exercise}
### Aufgabe

Zeichnen Sie einen Stern mit 5 Spitzen.
:::

## Pfade

Das wichtigste Werkzeug in SVG sind Pfade (oder path). Damit können Sie einer
Linie sagen welchem Pfad sie folgen soll, und somit sehr komplexe Formen
zeichnen. Die Formen können Sie auch ausfüllen, somit können Sie Pfade auch
verwenden um Polygone zu zeichnen. Pfade verwenden das spezielle Attribut `d`,
damit können Sie einen Pfad angeben, dafür gibt es eine eigene Sprache. Die
wird Ihnen in dem folgenden Video erklärt.

```svg
<svg height="100" width="100">
    <path d="M 20,0 L 50,100 l 50,-100 Z" fill="green" stroke="red" />
    <path d="M 0,0 Q 50,100 100,0 Z" fill="transparent" stroke="black" />
</svg>
```

::: {.video}
<iframe width="560" height="315"
src="https://www.youtube.com/embed/FuOt1YXYWBM"
frameborder="0" allow="accelerometer; autoplay; clipboard-write;
encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
:::

## Animationen

Das moderne Internet basiert sehr stark auf Animationen. Mit SVG können diese
recht einfach gemacht werden. Wie man Animationen am einfachsten oder am
effizientesten macht, das ist eine Wissenschaft für sich selbst. Wir
beschäftigen uns einfach mal damit das wir mit Animationen herumspielen können.
Dafür schauen wir uns das folgende Beispiel an, welches dann im Video erklärt
wird.

```svg
<svg height="100" width="100">
    <ellipse cx="50" cy="50" rx="50" ry="50" fill="red">
        <animate attributeName="ry"
            values="50;25;50"
            dur="2s"
            repeatCount="indefinite" />
    </ellipse>
</svg>
```

::: {.video}
<iframe width="560" height="315"
src="https://www.youtube.com/embed/vzINS_IAkhA"
frameborder="0" allow="accelerometer; autoplay; clipboard-write;
encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
:::

Sie können alle möglichen Attribute animieren, solange diese einen sinnvollen
Übergang haben. Probieren Sie es aus indem Sie mit dem Code spielen und eine
tolle Animation erstellen.

::: {.exercise}
### Aufgabe

Erstellen Sie ein Emoji so wie das unten, welches Sie anlächelt und dann
zwinkert. Sie können auch einen anderen Teil (oder mehrere Teile) animieren.

<center>
<svg id="svg-elem" height="100" width="100">
    <circle cx="50" cy="50" r="50" fill="yellow" />
    <circle cx="25" cy="35" r="10" fill="black" />
    <ellipse cx="75" cy="35" rx="10" ry="10" fill="black">
        <animate attributeName="ry"
            values="10;5;10"
            dur="2s"
            repeatCount="indefinite" />
    </ellipse>
    <path fill="transparent" stroke="black" stroke-width="3"
        d="M 25,65 q 25,25 50,0" />
</svg>
</center>
:::
