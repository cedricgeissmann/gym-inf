---
title: "Augmented Reality"
---

Wir möchten uns jetzt das Thema Augmented Reality anschauen. Unter Augmented
Reality versteht man dass die Realität mithilfe der Computers erweitert wird.
Dabei geht es nicht darum in eine komplette virtuelle Welt abzutauchen, sondern
die bestehende Realität zu erweitern und gewisse Hilfen für den Benutzer
anzuzeigen, oder einfach nur um Spass zu haben. Dazu wird sehr häufig
Künstliche Intelligenz verwendet um Modelle schnell und effizient zu berechnen.

In unserem Fall verwenden wir ein sogenanntes neuronales Netzwerk von Mediapipe
um Hände in Bildern zu erkennen. Sie können das Modell hier finden, und auch
nachschauen welcher Punkt zu welcher Stelle der Hand gehört.

<center>
<a href="https://google.github.io/mediapipe/solutions/hands">MediaPipe
Hands</a>
</center>

::: {.example}
### Daumen erkennen

Sie können ganz einfach die Daumenspitze von Ihrer Hand erkennen, indem Sie das
folgende Replit öffnen. Damit die Seite auch richtig funktioniert, müssen Sie
diese in einem eigenen Browsertab öffnen nachdem Sie das Repl geforkt haben.

<center>
<a href="https://replit.com/@CedricGeissmann/hand-detection?v=1">Handerkennung</a>
</center>
:::

## Code verstehen

Der Code ist sehr einfach für Sie organisiert. Sie finden alles was Sie
brauchen in der Datei `helper.js` und in `script.js`.

::: {.example}
### `script.js`

In der Datei `script.js` finden Sie die Funktion `draw()`. Diese wird bei jedem
neuen Frame das Ihre Kamera macht aufgerufen und sie erhalten eine Liste mit
`landmarks`, welches die Punkte der Hand sind die von der KI erkannte werden.

In der Computergrafik wird normalerweise mit Vektoren gearbeitet, also machen
wir das hier auch so. Wir haben eine praktische Funktion
`createVectorFromLandmark(landmark)` welche uns einen Vektor erzeugt. Diesen
können wir dann mit der Funktion `drawCircle(vec, radius, color)` anzeigen
lassen.
:::

::: {.exercise}
### Farbe und Grösse ändern

Ändern Sie die Farbe und die Grösse des Kreises der dargestellt wird.

:::

Wenn Sie beide Hände ins Bild bringen, sehen Sie das beide Hände einzeln
erkannt werden. Sie können also die Punkte pro Hand einzeichnen.

::: {.exercise}
### Weitere Punkte einzeichnen

Suchen Sie auf der Webseite von 
<a href="https://google.github.io/mediapipe/solutions/hands">MediaPipe
Hands</a>
nach weiteren Punkten, und zeichnen Sie diese ebenfalls ein. Wählen Sie dafür
eine andere Farbe.
:::

Da Sie sich alle bestens mit der Vektorgeometrie auskennen, können Sie auch
eigene Punkte einzeichnen oder abstände messen und Winkel bestimmen. Dafür
schreiben Sie normalerweise eine Funktion die Ihnen die ganze Arbeit abnimmt
sobald Sie den Vorgang wiederholen möchten. Diese Funktionen können Sie in der
Datei `helper.js` finden und auch neue hinzufügen.

::: {.exercise}
### Einen neuen Punkt bestimmen

Bestimmen Sie den Mittelpunkt zwischen dem Daumen und dem Zeigefinger.
Schreiben Sie dafür eine neue Funktion `calcMidpoint(vec1, vec2)` in die Datei
`helper.js`. Die Funktion nimmt 2 Vektoren entgegen und gibt einen neuen Vektor
zurück.

Zeichnen Sie den neuen Punkt ein.
:::

Wenn Sie neue Punkte berechnen möchten, dann ist es am einfachsten wenn Sie
dies an einer Hand machen. Es ist zwar möglich mit beiden Händen, dazu müssten
Sie den Code aber neu strukturieren, deshalb sollten Sie sich auf nur eine Hand
konzentrieren.

::: {.exercise}
### Vektor aus 2 Punkten berechnen

Sie können Punkte ja als Ortsvektoren betrachten, also können Sie auch einen
neuen Vektor aus 2 Vektoren bestimmen. Implementieren Sie eine Funktion
`calcVector(vec1, vec2)` die einen neuen Vektor aus 2 bereits bestehenden
Vektoren errechnet.
:::

Sie können nun die Funktionen `addVectors(vec1, vec2)` und `scaleVector(vec, factor)` 
verwenden um einen neuen Punkt zu berechnen. Berechnen Sie den Vektor vom
Handgelenk zu Daumenspitze und dann berechnen Sie einen neuen Punkt, wo Sie die
Spitze des Daumens um genau diesen Vektor verschieben. Zeichnen Sie diesen
Punkt ein.

Die Länge der Vektoren können Sie mit der Funktion `scaleVector(vec, factor)`
anpassen.

::: {.exercise}
### Vektor normieren

Es kann ganz praktisch sein wenn Sie einen Vektor normieren können. Einen
Vektor normieren bedeutet ihn auf die Länge 1 zu bringen. Sie müssen Ihn also
mit seinem eigenen Betrag skalieren.

Schreiben Sie eine Funktion die den Betrag eines Vektors berechnet. Schreiben
Sie eine Funktion die einen Vektor normiert.
:::

Sie können Punkte / Vektoren auch verbinden. Dafür gibt es die praktische
Helferfunktion `drawLine(vec1, vec2, color)`

::: {.exercise}
### Punkte verbinden

Zeichnen Sie eine Linie vom Handgelenk zur Spitze von jedem Finger.

:::

Sie können die Endpunkte der Linien auch zuvor als neue Vektoren berechnen.

::: {.exercise}
### Linien verlängern

Nehmen Sie das oberste Gelenk des Zeigefingers und die Spitze des Zeigefingers.
Berechnen Sie den Vektor für diese Verschiebung und normieren Sie den Vektor.
Jetzt können Sie den neuen Vektor so skalieren das es aussieht als hätten Sie
Krallen.
:::

Mit dem Skalarprodukt können Sie auch Winkel zwischen 2 Vektoren berechnen.

::: {.exercise}
### Skalarprodukt

Berechnen Sie den Winkel zwischen der Daumenspitze, dem Handgelenk und dem
Zeigefinger. Schreiben Sie den Winkel auf die Konsole.

Sie können diese Funktion auch erweitern. Wenn der Winkel zwischen 85° und 95°
ist, dann zeichnen Sie die Verbindungslinien in grün, ansonsten zeichnen Sie
diese rot.
:::
