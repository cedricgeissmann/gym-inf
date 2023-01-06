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
aber jeweils in einer eigenen Variable gespeichert werden. Da unsere Spieler
aber noch nicht interagieren können, bringt es uns nicht viel mehrere Spieler
zu erstellen. Fügen wir doch zuerst noch mehr Funktionalität zu der
Spielerklasse hinzu.

::: {.example}
### Spieler angreifen

Wir möchten gerne das ein Spieler einen anderen Spieler angreifen kann. Dafür
erweitern wir die Klasse Spieler von oben wie folgt:

```javascript
class Player {
    constructor() {
        this.hp = 100
        this.armor = 2
        this.dmg = 5
    }
    
    showStatus() {
        console.log(`Spieler hat ${this.hp} HP.`)
    }
    
    attack(targetPlayer) {
        targetPlayer.takeDamage(this.dmg)
    }
    
    takeDamage(dmg) {
        let dmgCalculated = (dmg - this.armor)
        if (dmgCalculated < 1) { dmgCalculated = 1 } 
        this.hp = this.hp - dmgCalculated
    }
}
```

Es sind hier 2 neue Methoden hinzugekommen. Die Methode `attack` sagt das ein
bestimmter Spieler einen anderen bestimmten Spieler angreifen soll. Wir müssen
also das Ziel an den angreifenden Spieler übergeben. Das sehen wir später wie
wir das im Code machen. Die Methode selbst sagt dann einfach das dem Ziel so
viel Schaden gemacht wird, wie der angreifende Spieler Schaden verursacht.
Dadurch können wir dann solche Dinge wie Immunität oder Schadenreduzierung bei
einem Spieler implementieren. Das ist ein weiterer Vorteil von Objekten, wir
können auf einem höheren Level beschreiben was einem Objekt passieren soll, und
das Objekt selbst kümmert sich um die Umsetzung. Schauen wir uns dafür gleich
die Methode `takeDamage(dmg)` an.

Diese Methode sagt das einem Spieler ein bestimmter Schaden zugefügt werden
soll. Je nach Logik die unser Spiel hat, soll der Schaden aber noch reduziert
oder verstärkt werden. Hier haben wir eine sehr einfache Implementierung
verwendet. Wir reduzieren den Schaden einfach um die Rüstung die ein Spieler
hat. Aber nicht weniger wie 1. Damit ist es bereits möglich unterschiedliche
Spieler zu haben. Beispielsweise könnte ein Spieler sehr viel Schaden
verursachen, aber fast keine Rüstung haben, oder ein anderer Spieler hat sehr
viel Rüstung, nimmt aber keinen Schaden. Beide Objekte folgen aber dem gleichen
Bauplan.

:::

## Objekte interagieren lassen

Wenn wir möchten das Objekte interagieren können, dann müssen wir auch mehrere
Objekte erstellen. Das werden wir in dem folgenden Beispiel gleich machen.

::: {.example}
### Kampf simulieren

Wie erstellen 2 Spieler die sich gegenseitig angreifen werden.

```javascript
const p1 = new Player()
const p2 = new Player()

p1.showStatus()
p2.showStatus()

p1.attack(p1)

p1.showStatus()
p2.showStatus()
```

In unserem Beispiel hat der Spieler `p1` den Spieler `p2` angegriffen, welcher
nun weniger Lebenspunkte wie der Spieler `p1` hat.
:::

## Unterschiedliche Werte für Objekte

In dem Beispiel oben können wir sehen das beide Spieler die genau gleichen
Werte haben. Es ist auch schwer im Status die Spieler auseinander zu halten, da
sie beide keinen Namen haben. Verschiedene Werte können über die Konstruktoren
an die Objekte übergeben werden.
