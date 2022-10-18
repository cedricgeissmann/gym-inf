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
    <circle cx="50" cy="50" r="50" fill="red">
</svg>
```

::: {.video}
<iframe width="560" height="315"
src="https://www.youtube.com/embed/aHUN_tgLoqk"
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
