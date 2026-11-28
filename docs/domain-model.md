# Ancestra

# Domain Model v1.0

## Purpose

This document defines the business domain model of Ancestra.

It serves as the authoritative reference for:

- Architecture decisions
- SQLite schema design
- Rust domain models
- TypeScript frontend models
- GitHub Copilot context
- Future feature development
- GEDCOM interoperability

The domain model describes the business concepts of the application and is intentionally independent from implementation details wherever possible.

---

# Vision

Ancestra is a modern, project-based genealogy application designed for researching, organizing, and exploring family history.

Ancestra is not a database application.

Users work with genealogy projects rather than database files.

The application combines traditional genealogy workflows with a modern desktop experience, high-performance local data storage, and a flexible graph-based genealogy model.

The underlying database is considered an implementation detail and remains hidden from the user.

---

# Core Principles

## Facts Are Stored, Views Are Generated

The genealogy database stores factual genealogy information.

Examples:

- Persons
- Families
- Relationships
- Events
- Places
- Sources
- Media references
- Notes

The application does not persist generated views.

Examples:

- Family trees
- Ancestor trees
- Descendant trees
- Relationship paths
- Family cards
- Reports
- Printed views
- Exports
- Kekulé numbers

Generated views can always be recreated from stored genealogy facts.

---

## Single Source of Truth

The genealogy database is the single source of truth for genealogy information.

Generated artifacts must never become authoritative data sources.

Any report, family card, export, or visualization must be reproducible from the genealogy graph stored in the database.

---

## One Real Person = One Record

Each real person must exist exactly once within a project.

A single person may simultaneously act as:

- Child
- Parent
- Partner
- Ancestor
- Descendant
- Family member in multiple family units

All references must point to the same person record.

Duplicate records are considered a data quality problem and should be actively prevented.

---

## Incomplete Information Is Normal

Genealogical research is often incomplete.

Ancestra must support:

- Unknown parents
- Unknown birth dates
- Unknown death dates
- Unknown locations
- Missing sources
- Unverified assumptions
- Partial family structures

Missing information must never prevent data entry.

---

## Local-First Ownership

All genealogy information belongs to the user.

Projects are stored locally.

The architecture assumes local ownership of genealogy data and does not require cloud services or online accounts.

---

# Genealogy Graph

## Fundamental Concept

The genealogy database stores a genealogy graph.

The database does not store family trees.

The graph consists of:

- Persons
- Family units
- Parent-child relationships
- Partner relationships

All genealogy views are derived from this graph.

---

## Why a Graph Instead of Stored Trees

Family trees are representations of relationships.

Relationships are facts.

Trees are views.

Storing trees would introduce redundant information and create consistency problems whenever relationships change.

The genealogy graph remains the only authoritative representation of family relationships.

---

## Generated Views

The following are generated from the graph:

- Ancestor trees
- Descendant trees
- Family trees
- Family cards
- Relationship paths
- Reports
- Print layouts

Generated views are not domain entities.

Generated views are never stored in the genealogy database.

---

## Dynamic Root Person

Any person in the genealogy graph may become the root person of a generated view.

Examples:

- A researcher viewing their own ancestry
- A child used as the root person
- A spouse used as the root person
- A historical ancestor used as the root person

Changing the root person must never modify genealogy data.

The root person is configuration, not genealogy data.

---

# Kekulé Numbering

## Purpose

Kekulé numbering is a standardized numbering system used to uniquely identify ancestors within an ancestor view.

---

## Computed Value

A Kekulé number is a computed value.

A Kekulé number is not a property of a person.

Its value depends on:

- The selected root person
- The current genealogy graph
- The generated ancestor tree

---

## Persistence Rule

Kekulé numbers must never be stored in the genealogy database.

The genealogy engine calculates them whenever required.

---

## Consequences

Changing the selected root person automatically changes the resulting Kekulé numbering.

No database updates are required.

No genealogy records are modified.

No renumbering process exists.

---

# Project Model

## Project-Based Application

Ancestra is a project-based application.

Users interact with projects rather than databases.

The project serves as the primary entry point of the application.

---

## Project File

Each project is represented by a dedicated project file.

Example:

```text
MyFamily.ancestra
```

The project file references all resources required by the project.

The project file is not part of the genealogy database.

The project file is the boundary between project configuration and genealogy data.

---

## Responsibilities of the Project File

The project file stores project-specific configuration.

Examples:

- Project name
- Database location
- Media locations
- Export locations
- Preferred root person
- Project metadata

---

## Example Project Structure

```text
MyFamily/
│
├── MyFamily.ancestra
│
├── database/
│   └── ancestra.db
│
├── media/
│   ├── photos/
│   ├── certificates/
│   └── documents/
│
├── exports/
│
└── backups/
```

---

## Example Project Configuration

```json
{
  "projectVersion": 1,
  "projectName": "My Family",
  "database": "./database/ancestra.db",
  "mediaDirectory": "./media",
  "exportDirectory": "./exports",
  "preferredRootPersonId": 42
}
```

Database-generated integer IDs are internal implementation identifiers.
Future versions may introduce stable public identifiers.

---

# Separation of Responsibilities

## Application Settings

Application settings are user-specific.

Examples:

- Language
- Theme
- Window layout
- User preferences
- Recently opened projects

Application settings exist independently of any project.

---

## Project Configuration

Project configuration belongs to a specific genealogy project.

Examples:

- Project metadata
- Preferred root person
- Project directories
- View defaults

Project configuration is stored in the project file.

---

## Genealogy Data

Genealogy data consists exclusively of factual research information.

Examples:

- Persons
- Families
- Events
- Places
- Sources
- Notes
- Media metadata

Genealogy data is stored in the SQLite database.

---

## Generated Views

Generated views are produced by the genealogy engine.

Examples:

- Ancestor views
- Descendant views
- Family trees
- Family cards
- Relationship reports
- Kekulé numbering

Generated views are never persisted as genealogy data.

---

## Architectural Rule

The following separation is mandatory:

```text
Application Settings
        ↓
Project Configuration
        ↓
Genealogy Database
        ↓
Genealogy Engine
        ↓
Generated Views
```

Project configuration must never be stored in the genealogy database.

Generated views must never be stored in the genealogy database.

---

# Genealogy Engine

The Genealogy Engine transforms genealogy facts
into genealogy views.

Responsibilities include:

- Graph traversal
- Ancestor discovery
- Descendant discovery
- Relationship calculation
- Dynamic Kekulé numbering

---

# Core Entities

## Person

The Person entity is the central entity of the entire system.

The Person entity represents identity within the genealogy graph.

User experience concepts such as Family Context and Research Assets are defined separately.

A person represents a real human being.

### Attributes

Examples:

- Technical identifier
- Preferred given name
- Preferred surname
- Sex
- Research status
- Audit information

Supported values for sex:

- MALE
- FEMALE
- UNKNOWN

### Relationships

A person may be connected to:

- Alternative names
- Events
- Sources
- Media
- Notes
- Families

### Research Status

The following research states are supported:

- CONFIRMED
- ASSUMED
- UNVERIFIED
- PLACEHOLDER

The research status exists solely for research purposes.

It must never influence genealogical calculations.

---

## PersonName

PersonName stores alternative name representations.

Examples:

- Birth name
- Married name
- Alias
- Nickname
- Historical spelling
- Preferred name

The user interface normally displays the preferred name.

---

# Family Model

## Family

A Family is a domain entity representing a parent-child relationship context.

The Family entity forms part of the genealogy graph.

User interface concepts such as Family Cards and Family Contexts are defined separately and are not domain entities.

A Family may contain:

- zero or more parents
- zero or more partners
- zero or more children

The Family entity exists to model genealogy relationships and does not necessarily correspond to a legal or social family structure.

---

## FamilyMember

FamilyMember connects persons to a family.

Examples of roles:

- FATHER
- MOTHER
- PARENT
- PARTNER
- UNKNOWN

The model intentionally supports incomplete information.

Future versions may support relationship-specific parent roles such as:

- Biological Parent
- Adoptive Parent
- Foster Parent
- Guardian

---

## FamilyChild

FamilyChild connects children to a family unit.

These relationships form the basis for:

- Parent-child navigation
- Ancestor calculations
- Descendant calculations
- Relationship calculations
- Graph traversal

Parent-child relationships are not stored redundantly elsewhere.

---

# Places

## Place

A Place stores location information.

Benefits:

- Reduced duplication
- Better searchability
- Geographic grouping
- Future map integration

---

## Place Hierarchy

Places may be organized hierarchically.

Example:

```text
Germany
└── Bavaria
    └── Neunkirchen
```

The hierarchy is organizational only.

It does not represent legally or historically authoritative political structures.

---

# Event Model

## General Principle

Historical facts are represented as events.

The event model is intentionally generic.

New event types may be introduced without requiring schema changes.

---

## Example Event Types

- Birth
- Baptism
- Confirmation
- Marriage
- Divorce
- Death
- Burial
- Occupation
- Residence
- Military Service

---

## Event

An event represents a historical occurrence.

Typical properties include:

- Event type
- Date
- Place
- Description

---

## EventParticipant

Persons and families participate in events through explicitly defined roles.

Examples:

### Birth

- Child
- Father
- Mother

### Baptism

- Baptized Person
- Godparent
- Officiant

### Marriage

- Spouse A
- Spouse B

### Death

- Deceased Person

This model provides high flexibility while remaining genealogically accurate.

---

## Genealogical Dates

Genealogical dates are often uncertain.

Examples:

- 12 May 1882
- About 1882
- Before 1882
- After 1882
- Between 1882 and 1885

Version 1 stores dates as genealogy-specific text representations.

---

# Sources

## Purpose

Sources provide evidence for genealogy information.

In the user experience, sources are presented as Research Assets.

Research Asset is a UX abstraction and not a separate domain entity.

Sources are optional.

Information may be entered before supporting evidence is available.

---

## Examples

- Church records
- Civil records
- Census records
- Family books
- Archive material
- Newspapers

---

## Version 1 Source Model

The initial source model intentionally remains simple.

Attributes may include:

- Title
- Repository
- Reference
- Description

---

## Future Extension

Future versions may introduce a more advanced citation model.

Example:

```text
Source:
    Church Book of Springfield

Citation:
    Entry 49 / 1925
```

---

# Media

## General Principle

Binary files are not stored inside SQLite.

Files are stored on the file system.

The database stores metadata only.

In the user experience, media can be presented as Research Assets.

Research Asset is a UX abstraction and not a separate domain entity.

The database must store relative media paths only.

Absolute paths are not allowed.

---

## Examples

- PDF
- JPG
- PNG
- TIFF

---

## Metadata

Media metadata may include:

- Filename
- Relative path
- MIME type
- Checksum
- Description
- File size

---

## Reuse

A single media file may be linked to multiple entities.

Examples:

- Person
- Event
- Source

The physical file exists only once.

---

# Notes

## Purpose

Notes store free-form information.

In the user experience, notes can be presented as Research Assets.

Research Asset is a UX abstraction and not a separate domain entity.

Examples:

- Family stories
- Research comments
- Investigation notes
- Historical observations

---

## Linking

Notes may be linked to:

- Persons
- Families
- Events
- Places
- Sources
- Media

---

# Duplicate Prevention

Preventing duplicate persons is a high-priority objective.

Potential matches should be evaluated using:

- Names
- Known dates
- Family relationships
- Locations
- Existing sources

The application should assist users in identifying possible duplicates.

The final decision remains with the user.

---

# GEDCOM Compatibility

The domain model aligns with fundamental GEDCOM concepts.

Goals include:

- Future GEDCOM import
- Future GEDCOM export
- Data exchange with genealogy applications

The internal model remains optimized for:

- SQLite
- Rust
- Tauri
- Modern desktop workflows

---

# Version 1 Non-Goals

The following are intentionally out of scope for Version 1:

- Automatic person merging
- AI-assisted genealogy analysis
- Cloud synchronization
- Multi-user collaboration
- Online genealogy databases
- Automatic GEDCOM synchronization

The architecture should remain flexible enough to support future expansion.
