# Ahnenforschung Desktop-Anwendung

# Domain Model v1.0

## Dokumentenzweck

Dieses Dokument beschreibt das fachliche Datenmodell der Ahnenforschungsanwendung.

Es dient als Referenz für:

- Architekturentscheidungen
- SQLite-Datenbankmodell
- Rust-Domänenmodell
- GitHub Copilot Kontext
- zukünftige Erweiterungen
- GEDCOM-Kompatibilität

Die Datenbank ist die einzige Quelle der Wahrheit (Single Source of Truth).

PDF-Stammkarten werden nicht gespeichert, sondern jederzeit aus dem Datenbestand erzeugt.

---

# Projektziele

## Fachliche Ziele

- korrekte genealogische Datenhaltung
- Unterstützung klassischer Familienstammkarten
- Speicherung unvollständiger Informationen
- Nachvollziehbarkeit der Forschung
- langfristige Erweiterbarkeit

## Technische Ziele

- SQLite als lokale Datenspeicherung
- Rust als Backend
- Tauri Desktop-Anwendung
- moderne GUI mit hoher Bediengeschwindigkeit
- spätere GEDCOM-Kompatibilität

---

# Grundprinzipien

## Personen existieren genau einmal

Jede reale Person darf nur einmal in der Datenbank existieren.

Dies gilt unabhängig davon, in welchen Stammkarten sie erscheint.

Eine Person kann gleichzeitig:

- Kind einer Familie sein
- Elternteil einer Familie sein
- Partner einer Familie sein
- Mitglied mehrerer Familien sein
- auf mehreren Stammkarten erscheinen

Alle Referenzen verweisen auf denselben Personendatensatz.

---

## Familienstammkarten sind Ansichten

Eine Familienstammkarte ist keine eigene Datenbankentität.

Sie ist eine Darstellung von:

- Personen
- Familien
- Kindern
- Ereignissen
- Orten
- Quellen
- Medien
- Notizen

Die Datenbank speichert ausschließlich die fachlichen Daten.

Stammkarten werden daraus generiert.

---

## Unvollständige Informationen sind normal

Genealogische Informationen sind häufig unvollständig.

Deshalb sind grundsätzlich alle fachlichen Felder optional.

Beispiele:

- Geburtsdatum unbekannt
- Eltern unbekannt
- Sterbedatum unbekannt
- Ort unbekannt
- Quelle unbekannt

Das Fehlen von Informationen darf die Erfassung nicht verhindern.

---

# Kekulé-Nummern

## Bedeutung

Die Kekulé-Nummer beschreibt die genealogische Position einer Person innerhalb einer definierten Ahnenlinie.

---

## Eigenschaften

- eindeutig
- optional
- nicht Primärschlüssel
- kann nachträglich vergeben werden

---

## Personen ohne Kekulé-Nummer

Folgende Personen können keine Kekulé-Nummer besitzen:

- noch nicht eingeordnete Personen
- vermutete Personen
- angeheiratete Personen
- Seitenlinien
- Geschwister angeheirateter Personen
- Forschungsobjekte außerhalb der Hauptlinie

---

## Wurzelperson

Die Bedeutung einer Kekulé-Nummer ergibt sich immer aus einer definierten Wurzelperson.

Die Anwendung muss sicherstellen, dass gespeicherte Kekulé-Nummern zur gewählten Ahnenlinie konsistent bleiben.

---

# Benutzeroberfläche

## Grundsatz

Die Benutzeroberfläche wird für schnelle Datenerfassung optimiert.

Das interne Datenmodell darf komplexer sein als die sichtbare Eingabemaske.

---

## Eingabeprinzipien

Ziel der GUI:

- möglichst wenige Klicks
- möglichst wenige Dialoge
- möglichst wenige Feldwechsel
- schnelle Datenerfassung

Die GUI orientiert sich an bestehenden Familienstammkarten.

---

## Namen

Im Standardfall werden lediglich erfasst:

- Nachname
- Vorname(n)

Dies ermöglicht eine schnelle Eingabe.

Zusätzliche Namen werden nur bei Bedarf gepflegt.

---

# Kernentitäten

# Person

Zentrale Entität des gesamten Systems.

Attribute:

- technische ID
- optionale Kekulé-Nummer
- bevorzugter Vorname
- bevorzugter Nachname
- Geschlecht
- Forschungsstatus
- Änderungsinformationen

Eine Person kann besitzen:

- weitere Namen
- Ereignisse
- Quellen
- Medien
- Notizen

---

## Forschungsstatus

Personen können unterschiedliche Bearbeitungsstände besitzen.

Mögliche Werte:

- CONFIRMED
- ASSUMED
- UNVERIFIED
- PLACEHOLDER

Der Forschungsstatus dient ausschließlich der Forschung.

Er beeinflusst keine genealogischen Berechnungen.

---

# PersonName

Speichert alternative Namensformen.

Beispiele:

- Geburtsname
- Alias
- Spitzname
- Rufname
- historische Schreibweise

Die GUI verwendet standardmäßig den bevorzugten Namen.

---

# Familienmodell

## Family

Eine Familie beschreibt einen genealogischen Familienverbund.

Eine Familie repräsentiert:

- gemeinsame Elternschaft
- gemeinsame Kinder
- gemeinsame Ereignisse

Eine Heirat ist hierfür nicht notwendig.

---

## FamilyMember

Verknüpft Personen mit einer Familie.

Rollenbeispiele:

- FATHER
- MOTHER
- PARENT
- PARTNER
- UNKNOWN

Dieses Modell erlaubt:

- unvollständige Familien
- unbekannte Elternteile
- zukünftige Erweiterungen

---

## FamilyChild

Verknüpft Kinder mit einem Familienverbund.

Hieraus ergeben sich:

- Abstammungslinien
- Ahnenberechnungen
- Vorfahren
- Nachfahren

Eltern-Kind-Beziehungen werden nicht redundant gespeichert.

---

# Orte

## Place

Speichert Ortsinformationen zentral.

Vorteile:

- Vermeidung von Dubletten
- bessere Suche
- geografische Auswertungen
- spätere Kartendarstellungen

---

## Ortshierarchie

Orte können hierarchisch organisiert werden.

Beispiel:

Deutschland
└── Sachsen
└── Grimma

Die Hierarchie dient der Organisation.

Sie stellt ausdrücklich keine historisch verbindliche politische Zuordnung dar.

---

# Ereignismodell

## Grundprinzip

Historische Informationen werden als Ereignisse gespeichert.

Das Ereignismodell ist generisch aufgebaut.

Neue Ereignistypen können hinzugefügt werden, ohne das Datenbankschema zu ändern.

---

## Ereignistypen

Beispiele:

- Geburt
- Taufe
- Konfirmation
- Heirat
- Scheidung
- Tod
- Bestattung
- Beruf
- Wohnort
- Militärdienst

---

## Event

Ein Ereignis beschreibt einen historischen Sachverhalt.

Ein Ereignis besitzt typischerweise:

- Typ
- Datum
- Ort
- Beschreibung

---

## EventParticipant

Teilnehmer werden über Rollen mit einem Ereignis verknüpft.

Beispiele:

Geburt:

- Kind
- Vater
- Mutter

Taufe:

- Täufling
- Pate
- Pfarrer

Heirat:

- Ehepartner A
- Ehepartner B

Tod:

- Verstorbener

Dieses Modell entspricht modernen genealogischen Systemen und bietet eine hohe Erweiterbarkeit.

---

## Datumsangaben

Genealogische Datumsangaben sind häufig unscharf.

Beispiele:

- 12.05.1882
- ca. 1882
- vor 1882
- nach 1882
- zwischen 1882 und 1885

Datumsangaben werden deshalb zunächst als genealogischer Text gespeichert.

---

# Quellen

## Zweck

Quellen belegen genealogische Aussagen.

Quellen sind optional.

Informationen dürfen auch ohne Quellen gespeichert werden.

---

## Beispiele

- Kirchenbuch
- Standesamtsregister
- Sterberegister
- Familienbuch
- Archivquelle
- Zeitungsartikel

---

## Quellenmodell V1

Version 1 verwendet bewusst ein einfaches Quellenmodell.

Attribute:

- Titel
- Archiv / Repository
- Referenz
- Beschreibung

---

## Erweiterbarkeit

Spätere Versionen können ein erweitertes Zitationsmodell einführen.

Beispiel:

Quelle:

- Kirchenbuch Liegnitz

Zitat:

- Eintrag Nr. 49/1925

---

# Medien

## Grundsatz

Binärdaten werden nicht in SQLite gespeichert.

Dateien werden auf dem Dateisystem abgelegt.

Die Datenbank speichert ausschließlich Metadaten.

---

## Unterstützte Medien

Beispiele:

- PDF
- JPG
- PNG
- TIFF

---

## Dateistruktur

```text
projekt/
├── ahnen.db
└── media/
    ├── 000001.jpg
    ├── 000002.pdf
    └── 000003.tif
```

---

## Metadaten

Gespeichert werden:

- Dateiname
- relativer Pfad
- MIME-Type
- Prüfsumme
- Beschreibung

---

## Verknüpfungen

Ein Medium kann mehreren Entitäten zugeordnet werden.

Beispiele:

Geburtsurkunde:

- Person
- Geburtsevent
- Quelle

Das Medium wird physisch nur einmal gespeichert.

---

# Notizen

## Zweck

Notizen speichern freie Informationen.

Beispiele:

- Familienüberlieferungen
- Anmerkungen
- Forschungshinweise
- historische Besonderheiten

---

## Verknüpfung

Notizen können mit beliebigen Entitäten verbunden werden.

Beispiele:

- Person
- Familie
- Ereignis
- Quelle
- Medium
- Ort

---

# Duplikatvermeidung

Die Vermeidung doppelter Personen besitzt höchste Priorität.

Vor jeder Neuanlage sollen geprüft werden:

- Kekulé-Nummer
- Name
- bekannte Lebensdaten
- bestehende Familienbeziehungen

Die Anwendung soll mögliche Treffer anzeigen.

Die endgültige Entscheidung trifft der Benutzer.

---

# GEDCOM-Kompatibilität

Das Modell orientiert sich an den Grundprinzipien von GEDCOM.

Ziele:

- späterer GEDCOM-Import
- späterer GEDCOM-Export
- Datenaustausch mit anderen Genealogieprogrammen

Das interne Modell bleibt auf SQLite, Rust und eine moderne Desktop-Anwendung optimiert.

---

# Nicht-Ziele von Version 1

Nicht Bestandteil der ersten Version:

- automatische Personenzusammenführung
- KI-gestützte Ahnenanalyse
- Cloud-Synchronisation
- Mehrbenutzerbetrieb
- Online-Datenbanken
- automatische GEDCOM-Synchronisation

Die Architektur soll zukünftige Erweiterungen jedoch ermöglichen.
