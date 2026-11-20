# Architecture Decisions

## Zweck

Dieses Dokument beschreibt die wichtigsten Architekturentscheidungen des Projekts.

Es ergänzt:

- domain-model.md
- schema.sql

und dokumentiert bewusst getroffene Entscheidungen, damit diese bei späteren Erweiterungen oder Refactorings nachvollziehbar bleiben.

---

# ADR-001

# SQLite als primäre Datenhaltung

## Status

Accepted

## Entscheidung

Die Anwendung verwendet SQLite als einzige Datenbank.

## Begründung

Die Anwendung ist eine lokale Desktop-Anwendung.

Vorteile:

- keine Serverinstallation
- keine Netzwerkabhängigkeit
- einfache Datensicherung
- hohe Performance
- einfacher Datenaustausch

## Konsequenzen

- keine Client-Server-Architektur
- keine zentrale Mehrbenutzerverwaltung
- Optimierung auf lokale Nutzung

---

# ADR-002

# Datenbank als Single Source of Truth

## Status

Accepted

## Entscheidung

Die Datenbank ist die einzige Quelle der Wahrheit.

PDF-Stammkarten werden niemals gespeichert.

## Begründung

Stammkarten sind lediglich Darstellungen genealogischer Daten.

Eine Speicherung erzeugt Redundanzen und Inkonsistenzen.

## Konsequenzen

Alle Ausgaben werden aus den Daten erzeugt:

- Stammkarten
- Berichte
- Exporte
- Druckansichten

---

# ADR-003

# Personen existieren genau einmal

## Status

Accepted

## Entscheidung

Jede reale Person darf nur einmal innerhalb eines Projektes existieren.

## Begründung

Eine Person kann gleichzeitig erscheinen als:

- Kind
- Elternteil
- Ehepartner
- Person in weiteren Ehen
- Vorfahr
- Nachfahre

Mehrfach angelegte Personen würden widersprüchliche Stammbäume erzeugen.

## Konsequenzen

Vor jeder Neuanlage muss nach bestehenden Personen gesucht werden.

Die Anwendung unterstützt die Duplikaterkennung.

Die endgültige Entscheidung verbleibt beim Benutzer.

---

# ADR-004

# Speicherung der Kekulé-Nummer

## Status

Accepted

## Entscheidung

Die Kekulé-Nummer wird gespeichert.

## Alternative

Die Nummer könnte jederzeit neu berechnet werden.

## Begründung

Die Nummer wird häufig benötigt für:

- Suche
- Anzeige
- Dokumentenerzeugung
- Stammkarten

Die Speicherung vereinfacht die Nutzung erheblich.

## Konsequenzen

Die Anwendung ist verantwortlich für die Konsistenz der Nummerierung.

Kekulé-Nummern sind:

- eindeutig
- optional
- nicht Primärschlüssel

---

# ADR-005

# Familienmodell

## Status

Accepted

## Entscheidung

Familien werden durch folgende Tabellen modelliert:

- Family
- FamilyMember
- FamilyChild

## Verworfen

Direkte Speicherung von:

- Partner A
- Partner B

innerhalb der Familie.

## Begründung

Genealogische Daten sind häufig unvollständig.

Beispiele:

- Vater unbekannt
- Mutter unbekannt
- ungeklärte Elternschaft

Das FamilyMember-Modell ist flexibler.

## Konsequenzen

Rollen werden explizit gespeichert.

Beispiele:

- FATHER
- MOTHER
- PARENT
- PARTNER

---

# ADR-006

# Generisches Ereignismodell

## Status
