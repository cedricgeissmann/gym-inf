---
title: "Eigene Webseite mit HTML"
---

Webseiten werden mit **HTML** geschrieben. **HTML**
(**H**yper-**T**ext-**M**arkup-**L**anguage) ist eine Sprache, die
es erlaubt die Struktur einer Webseite und deren Inhalt zu beschreiben.
**HTML** basiert auf sogenannten **Tags**, welche den Inhalt einschliessen und
beschreiben von welcher Art dieser Inhalt ist.

**Beispiel:**

```html
<h1>Dies ist ein Title</h1>
```

In diesem Stück Code wird beschrieben dass hier ein Titel kommen soll. Der
Inhalt des Titels ist `Das ist ein Title`. Die Elemente `<h1>` und `</h1>`
nennt man **Tags**. Jeder Inhalt einer Webseite muss in diesen **Tags** stehen,
damit die Webseite richtig angezeigt werden kann. **Tags** bestehen immer aus
einem öffnenden **Tag** (`<h1>`) und einem schliessenden **Tag** (`</h1>`).
Dabei heissen die **Tags** immer gleich und das schliessende hat zusätzlich
noch einen `/`. Das ist mehr oder weniger alles was Sie über die Funktionsweise
von **HTML** wissen müssen.

## Aufrufen einer Webseite

Wenn Sie im Internet eine Webseite besuchen, dann stellen Sie eine Anfrage an
einen Webserver. Dieser Webserver generiert ein **HTML**-Dokument für Sie und
dieses wird dann über das Internet an Ihren Computer gesendet. Sie erhalten
also Ihre Webseite als Text von einem Webserver. Damit das ganze für Sie als
Besucher der Webseite dann auch übersichtlich ist, stellt der Webbrowser die
Webseite für Sie dar. Dazu sagt man das der Webbrowser ein **HTML**-Dokument
*rendert*.

Beim *rendern* liest der Webbrowser das **HTML** und erstellt dabei ein
**D**ocument-**O**bject-**M**odel (kurz **DOM**). Bei anderen Dokumentformaten
(z.B. Word) funktioniert dies sehr ähnlich, nur das Sie in diesen Formaten das
Endresultat bereits sehen. Das scheint oftmals praktisch zu sein, kann aber
auch zu Problemen führen, denn bei diesen Formaten müssen Sie nicht beschreiben
was Sie machen möchten, sondern passen einfach das aussehen an. Das führt dazu
das gewisse Änderungen Ihr ganzes Dokument durcheinander bringen können. Wenn
Sie sauberes **HTML** schreiben, sollte Ihnen das nicht passieren. Dazu müssen
Sie aufpassen das immer alle **Tags** geschlossen sind, das ist der häufigste
Fehler. Es mag zu Beginn ein wenig gewöhnungsbedürftig sein alles in Code zu
schreiben, aber wenn Sie sich angewöhnen alles immer sauber auszurichten,
werden Sie **HTML** wie ganz normalen Text lesen, ohne die Hilfe des Browsers
zu brauchen.

## HTML Dokument

Was Sie oben gesehen haben, ist nur ein Ausschnitt aus einem **HTML**-Dokument.
Ein vollständiges **HTML**-Dokument hat noch mehr Teile. Hier ist eine Vorlage
für ein komplettes Dokument:

```html
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width">
    <title>Erste HTML Seite</title>
  </head>
  
  <body>
    <h1>HTML Seite</h1>
  </body>
</html>
```

In dem Code hier sehen Sie das ein **HTML**-Dokument immer in 2 Teile
aufgeteilt ist. Es gibt den `<head>`, welcher Metainformationen über die Seite
enthält. Hier können Sie zum Beispiel einen Titel angeben. Der Titel einer
Webseite ist das was im Webbrowser im Tab sehen können. Der Titel wird
normalerweise nicht auf der Seite selbst dargestellt.

Die restlichen Informationen im `<head>` sind für Sie nicht weiter interessant,
Sie können die einfach kopieren.

Der Inhalt einer Webseite ist alles was innerhalb von `<body>` definiert wird.
Das ist was Sie am Ende nach dem *Rendering* sehen. Im Moment sehen Sie nur
eine Überschrift und nichts weiteres.

## Eigene Webseite erstellen

Sie können ganz einfach ein **HTML**-Dokument auf Ihrem Computer erstellen und
diesem im Browser öffnen, das können Sie dann aber leider nicht mit anderen
Teilen, und genau das ist was Sie mit Webseiten machen möchten. Deshalb
verwenden wir den Dienst [Replit](https://replit.com). 

::: {.exercise}
### Exercise

Erstellen Sie sich dort einen Account.
:::

Wenn Sie den Account haben, erstellen Sie ein neues **repl** und
wählen Sie dort **HTML, CSS, Javascript** als Vorlage aus.

Wenn Ihr **repl** erstellt wurde, öffnen Sie die Datei `index.html` und
ersetzen Sie deren Inhalt mit dem Code von weiter oben. Drücken Sie auf den
**Run**-Button ganz oben auf der Seite und Ihre Webseite ist gestartet. Sie
können die Webseite jetzt auch mit anderen teilen, sie ist über die **URL**
aufrufbar, die sie oben rechts sehen können. Sie können Ihre Änderungen
natürlich auch sehen wenn Sie einfach auf den **Run**-Button drücken.


## Eigener Abschnitt

Sie können einen Abschnitt erzeugen, indem Sie ganz einfach dieses Code-Snippet
einfügen:

```html
<p>Das ist ein Abschnitt.</p>
```

Das `<p>`-Tag steht für **P**aragraph und beschreibt somit einen Abschnitt. Bei
**HTML** ist es so das Ihr Browser alle unnötigen Leerzeichen und
Zeilenumbrüche ignoriert. Wenn Sie also mehrere Abschnitte brauchen, müssen Sie
mehrere `<p>`-Tags verwenden. Das ergibt auch Sinn wenn Sie sich überlegen das
Sie mit **HTML** ja den Inhalt einer Webseite und deren Aufbau beschreiben.
Damit müssen Sie jedem einzelnen Absatz sagen, das es sich um einen Absatz
handelt.

::: {.exercise}
### Exercise

Fügen Sie nun noch ein paar Abschnitte hinzu.
:::

## Weitere Tags

Es gibt noch viele weitere **Tags** wie nur `<p>`. Zum Beispiel können Sie mit
dem `<strong>`-Tag, einen Text hervorheben der dann Fettgedruckt erscheint. Mit
dem `<em>`-Tag, können Sie Text kursiv darstellen.

Eine Liste mit möglichen **Tags** finden Sie hier: [HTML Cheatsheet](https://quickref.me/html)

Es ist normalerweise nicht nötig das Sie alle möglichen **Tags** auswendig
können. Sie müssen einige wenige **Tags** kennen die Sie häufig brauchen, und
für alles andere, müssen Sie wissen wo Sie diese finden. Das [HTML
Cheatsheet](https://quickref.me/html) ist eine gute Referent dafür. Eine
weitere gute Referenz ist
[w3schools](https://www.w3schools.com/tags/ref_byfunc.asp).

::: {.exercise}
### Exercise

Lesen Sie durch die Liste und probieren Sie verschiedene **Tags** aus die
spannend klingen.
:::

## Links auf Webseiten

Das Praktische an Webseiten ist das alles miteinander verlinkt werden kann. Sie
können ein Stück Text auf Ihrer Webseite erzeugen das Sie direkt auf die Seite
bringt über die Sie sprechen, so wie bei den Cheatsheets von oben. Das machen
Sie ganz einfach mit `<a>`-Tags:

```html
<a href="https://www.w3schools.com/tags/ref_byfunc.asp">w3schools</a>
```

Das was innerhalb von dem **Tag** steht, ist der Text der Ihnen angezeigt wird.
Das was hinter `href` steht, ist der Link auf den Sie weitergeleitet werden
wenn Sie darauf klicken. `<a>`-Tags sind ein sehr wichtiger Bestandteil vom
Web. Alle Webseiten verwenden Links um auf andere zu zeigen oder auch um auf
Unterseiten zu verweisen.

## Listen

Ein anderes Element das auf Webseiten häufig verwendet wird, sind Listen. Diese
funktionieren sehr einfach. Sie sagen dem Browser das jetzt eine Liste folgt,
und dann zählen Sie die einzelnen Elemente der Liste auf:

```html
<ul>
    <li>Item 1</li>
    <li>Item 2</li>
</ul>
```

In dem Beispiel oben ist das `<ul>`-Tag, das Tag für eine unsortierte Liste
(`<ol>` könnte für nummerierte Listen verwendet werden). Und mit dem
`<li>`-Tag, sprechen Sie einzelne Einträge in der Liste an (**l**ist
**i**tems).

::: {.exercise}
### Exercise

Erstellen Sie nun eine Liste von Links zu Ihren häufig verwendeten Webseiten.
:::

## Bilder

Bilder sind sehr wichtig für Webseiten. Der Webbrowser kann alle Bildformate
einfach darstellen. Sie müssen nur ein `<img>`-Tag verwenden:

```html
<img src="https://gym-muttenz.ch/fileadmin/user_upload/_headerbilder/3.jpg" alt="Bild vom Gymnasium Muttenz">
```

Sie sehen das `<img>`-Tag hat 2 Attribute (`src` und `alt`). Das Attribut `src`
gibt eine **URL** zu dem Bild an das Sie anzeigen möchten. Ist dies ein Bild
das im Internet verfügbar ist, können Sie das so angeben wie oben. Ist das Bild
lokal (auf Ihrem **repl** verfügbar) können Sie einfach den Namen des Bildes
angeben. Das Attribut `alt` ist eine Beschreibung des Bildes. Es hilft einer
Suchmaschine beim auffinden von Bildern und falls das Bild nicht geladen werden
kann, zeigt der Browser den Text als Ersatz für das Bild an.

Das `<img>`-Tag ist eines der wenigen Tags die nicht geschlossen werden. Das
liegt daran das nichts in dem Tag angezeigt wird, ausser natürlich dem Bild.

Die Grösse eines Bildes kann man über die Attribute `width` und `height`
angeben. Dazu gibt man einfach eine Zahl in Pixel (`px`) an.


```html
<img src="https://gym-muttenz.ch/fileadmin/user_upload/_headerbilder/3.jpg" alt="Bild vom Gymnasium Muttenz" width="300px">
```

::: {.exercise}
### Exercise

Fügen Sie einige Bilder zu Ihrer Webseite hinzu (mindestens 3).
:::

## Unterseiten

Sie können auch auf Unterseiten von Ihrem Webserver verlinken und einige Teile
der Webseite auslagern. Diese kann man dann sehr praktisch über `<a>`-Tags
erreichen. Mit dem folgenden Beispiel erreichen Sie die Unterwebseite
`hobbies.html`, welche Sie im gleichen Verzeichnis wie Ihre `index.html`
erstellen müssen.

```html
<a href="hobbies.html">Hobbies</a>
```

::: {.exercise}
### Exercise

Erstellen Sie eine Unterseite `hobbies.html` mit einer Liste von Ihren Hobbies.
Verlinken Sie von Ihrer Hauptseite auf diese Unterseite.
:::


::: {.exercise}
### Exercise

Erstellen Sie Ihre eigene persönliche Webseite. Teilen Sie diese in mindestens
1 Hauptseite und 2 Unterwebseiten auf. Die Webseiten müssen Bilder, Listen und
Links enthalten.

Wir werden uns das nächste mal mit dem Design beschäftigen und Ihre aktuelle
Webseite erweitern. Geben Sie sich also Mühe beim entwerfen dieser Seite.
:::
