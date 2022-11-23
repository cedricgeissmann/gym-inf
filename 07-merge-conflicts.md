---
title: "Merge Konflikte"
---

Es gibt verschiedene Möglichkeiten wie man zusammenarbeiten kann. Die einfachste ist vermutlich sich zu treffen und zur gleichen Zeit an den gleichen Dingen zu arbeiten. Obwohl das einige Vorteile bringt, ist es extrem Zeitaufwendig und nicht immer umsetzbar. Zusammenarbeit über das Internet geht da schon ein wenig besser, aber auch da geht sehr viel Zeit verloren wenn man gleichzeitig an den selben Sachen arbeiten muss. Eine Alternative ist sich zuvor abzusprechen und sich zu koordinieren. Da muss aber bereits klar sein wer was genau machen wird, was auch sehr Zeitintensiv ist.

Bei Projekten ist es oftmals so das verschiedene Personen an den gleichen Dingen zur gleichen Zeit arbeiten müssen. Eine Lösung dafür ist, das jeder an seinem Teilbereich arbeitet, und wenn man damit fertig ist, kümmert man sich um die Zusammenführung der Arbeit. Im Kontext von **Git** nennt sich das ein **merge** (also eine Zusammenführung). Dabei ist **Git** sehr klever und kann viele Dinge bereits automatisiert ändern, manchmal gibt es aber auch Überschneidungen, diese nennt man dann **Mergekonflikte**.

## Mergekonflikte lösen

Das Arbeitsmodell von **Git** gibt vor das die Person die einen **Mergekonflikt** erzeugt, diesen auch lösen muss. Das ergibt Sinn, denn diese Person möchte ihre Arbeit in das Projekt einfügen, da muss die Person selbst schauen das ihre Arbeit mit dem Projekt kompatibel ist.

Mit ein wenig Koordination und kleinen Tasks, können Sie **Mergekonflikte** vermeiden oder zumindest reduzieren.

::: {.exercise}
### Mergekonflikte erzeugen

Wir erstellen zusammen ein lokales Projekt, das wir mit **Git** verwalten. Darin erzeugen wir einen **Mergekonflikt** den wir dann auch wieder lösen. Machen Sie sich Notizen zu dem Prozess, und wiederholen Sie diesen nochmals.
:::

::: {.video}
<iframe width="560" height="315"
src="https://www.youtube.com/embed/bW82xTktGfU"
frameborder="0" allow="accelerometer; autoplay; clipboard-write;
encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
:::

::: {.exercise}
### Weiter üben

Sie müssen diesen Prozess immer wieder mal machen, deshalb ist es wichtig das er sitzt. Üben Sie den ganzen Prozess immer wieder, und machen Sie sich Notizen dazu.
:::

## Zusammenarbeiten

Wenn Sie zusammenarbeiten taucht diese Art von Konflikt häufiger auf. Das soll also auch gut geübt sein. Um zusammen an dem gleichen Projekt zu arbeiten, gehen Sie auf [https://github.com](https://github.com) und erstellen Sie ein neues Repository an dem Sie dann zu zweit arbeiten. Dafür fügen Sie einen neuen Collaborator ein.

::: {.exercise}
### An einem Repository arbeiten

Wenn Sie beide Zugriff auf das gleiche Repository haben, klonen Sie es in VSCode. Arbeiten Sie zusammen an einer Webseite in jeweils eigenen Branches. Führen Sie diese zusammen un beheben Sie **Mergekonflikte**.

:::