---
title: "Klassen und Objekte"
---

Klassen und Objekte sind in der Informatik 2 sehr wichtige Konstrukte, beide
sind sehr stark miteinander Verwandt und werden teilweise als Synonyme
verwendet. Das ist jedoch nicht ganz korrekt. Eine Klasse ist ein Bauplan für
ein Objekt. Die Klasse beschriebt welche Daten in einem Objekt vorkommen und
welche Methoden ein Objekt hat. Ein Objekt ist dann eine Instanz dieser Klasse,
also ein Stück in dem ausgeführten Programm, welches dem Bauplan der Klasse
folgt.

::: {.example}
### Beispiel Spieler

Schauen wir uns das am besten an einem Beispiel an. Wir nehmen eine Spieler
Klasse und implementieren diese mal mit nur dem aller nötigsten.

```javascript
class Player {
    constructor() {
        this.hp = 100
        this.armor = 2
    }
    
    showStatus() {
        console.log(`Spieler hat ${this.hp} HP.`)
    }
}
```

Die Klasse Spieler hat 2 Methoden. Die erste Methode ist der sogenannte
Konstruktor. Diese Methode wird automatisch aufgerufen wenn wir ein neues
Objekt von dieser Klasse erstellen. Im Konstruktor werden verschiedene
Attribute von dem Objekt gesetzt. Dies wird immer mit `this.attr` gemacht.
Damit sagen wir dass wir das Attribut setzen möchten das zu genau diesem Objekt
gehört. Diese Attribute (oder auch Felder) können nun im ganzen Objekt
verwendet werden.

Die zweite Methode `showStatus()` gibt uns einfach den Status von dem Spieler
zurück. Die Methode ist im Moment noch sehr einfach, sie zeigt nur die
Lebenspunkte von einem Spieler an.
:::

## Objekte erstellen

In dem oberen Beispiel haben wir eine Klasse erstellt, damit können wir noch
nicht so viel anfangen, wir haben damit dem Code erst gesagt was der Bauplan
für ein Objekt vom Typ Spieler ist. Wenn wir nun einen Spieler haben möchten,
dann müssen wir diesen erstellen. Man sagt dazu eine Instanz von einem Objekt
erzeugen.

::: {.example}
### Spieler erzeugen

Damit das Beispiel funktioniert, müssen Sie den Code von oben bereits in Ihr
`script.js` kopiert haben.

```javascript
const p1 = new Player()
p1.showStatus()
```

Damit können wir einen neuen Spieler erstellen, und den Status von dem Spieler
anzeigen lassen. Mit dem Schlüsselwort `new` können wir ein Objekt von einem
Typ erstellen lassen. Dieses Objekt speichern wir dann in der Variable `p1`. Ab
dann können wir `p1` verwenden, wenn wir auf dieses Objekt zugreifen möchten.

:::

## Mehrere Objekte erstellen

Der Vorteil von Objekten kommt eigentlich dann ins Spiel, wenn wir mehrere
Objekte vom gleichen Typ erstellen möchten. Diese Objekte sollen aber alle
leicht andere Werte haben, aber alle dem gleichen Bauplan folgen. Genau dafür
sind Objekte gemacht.

Mehrere Objekte können genau so wie im Beispiel oben erzeugt werden, müssen
aber jeweils in einer eigenen Variable gespeichert werden.
