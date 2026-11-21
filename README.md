# Ancestra

A modern, project-based genealogy desktop application focused on genealogy research, family history management, and long-term preservation of genealogical knowledge.

---

# Vision

Ancestra combines traditional genealogy research with a modern desktop user experience.

The project emphasizes:

- Efficient data entry
- Consistent genealogy data management
- High usability
- Local-first data ownership
- Long-term maintainability
- Future GEDCOM interoperability
- Dynamic genealogy visualization
- Flexible family exploration

Unlike many genealogy applications, Ancestra is built around a genealogy graph and a project-based workflow rather than static family trees.

---

# Core Philosophy

## Ancestra Is Not a Database Application

Users work with genealogy projects.

The SQLite database is an internal implementation detail.

Researchers should never need to understand the database structure in order to use the application effectively.

The project file acts as the primary entry point.

---

## Facts Are Stored. Views Are Generated.

The genealogy database stores factual research information only.

Examples:

- Persons
- Families
- Relationships
- Events
- Places
- Sources
- Notes
- Media metadata

The application generates:

- Family trees
- Ancestor trees
- Descendant trees
- Family cards
- Relationship reports
- Kekulé numbering
- Printed views

Generated views are never persisted as genealogy data.

---

## Genealogy Graph Architecture

Ancestra stores a genealogy graph rather than static family trees.

The graph consists of:

- Persons
- Family units
- Parent-child relationships
- Partner relationships

Every genealogy view is generated dynamically from this graph.

This architecture allows unrestricted exploration of family relationships while maintaining a single source of truth.

---

## Dynamic Root Person

Any person within a project can become the root person of a generated genealogy view.

Examples:

- Personal ancestry
- Child ancestry
- Spouse ancestry
- Descendant studies
- Historical ancestor analysis

Changing the root person never modifies genealogy data.

---

## Dynamic Kekulé Numbering

Kekulé numbers are not stored.

They are generated dynamically by the genealogy engine based on:

- The selected root person
- The current genealogy graph

This allows genealogy views to be recalculated instantly from any perspective without modifying the database.

---

# Project Status

🚧 Early Development (Version 1)

Current focus areas:

- Domain modeling
- Architecture design
- Database schema design
- Genealogy engine design
- Project system design
- UI/UX concepts
- Technical foundations

Not yet implemented:

- User interface
- Database access layer
- Genealogy engine
- Family card generation
- GEDCOM import
- GEDCOM export

---

# Core Principles

## One Real Person = One Record

Each real person should exist exactly once within a project.

A person can appear simultaneously as:

- Child
- Parent
- Partner
- Ancestor
- Descendant
- Member of multiple family units

The application will support duplicate detection and help identify potentially duplicated records.

---

## Incomplete Data Is Normal

Genealogical information is frequently incomplete.

Ancestra is designed to support:

- Unknown parents
- Unknown birth dates
- Unknown death dates
- Missing locations
- Missing sources
- Unverified assumptions
- Partial family structures

Uncertainty should never prevent the user from recording new information.

---

## Local-First Ownership

All genealogy data remains under the user's control.

Projects are stored locally.

No cloud service is required for normal operation.

---

# Project Structure

Ancestra uses a project-oriented workflow.

Example:

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

# Project File

The project file is the primary entry point of Ancestra.

Example:

```text
MyFamily.ancestra
```

The project file stores project-specific configuration such as:

- Project name
- Database location
- Media location
- Export location
- Preferred root person
- Future project preferences

The project file does not store genealogy facts.

---

# Architecture Overview

Ancestra follows a layered architecture.

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

---

## Application Settings

Examples:

- Language
- Theme
- Window layout
- User preferences

Application settings are independent of any particular project.

---

## Project Configuration

Examples:

- Project metadata
- Preferred root person
- Directory locations

Project configuration is stored inside the `.ancestra` project file.

---

## Genealogy Database

The genealogy database stores facts only.

Examples:

- Persons
- Families
- Events
- Sources
- Places
- Notes

The database does not store:

- Tree layouts
- Reports
- Generated cards
- Generated numbering systems

---

## Genealogy Engine

The genealogy engine is responsible for:

- Graph traversal
- Ancestor calculations
- Descendant calculations
- Relationship calculations
- Dynamic Kekulé numbering
- Report generation
- Family card generation

---

# Technology Stack

## Frontend

- TypeScript
- HTML5
- CSS3
- Vite

---

## Backend

- Rust
- Tauri v2
- rusqlite

---

## Database

- SQLite

---

## Development Environment

- Windows 11
- Visual Studio Code

---

# Planned Features

## Person Management

- Person records
- Alternative names
- Research status tracking
- Duplicate detection

---

## Family Management

- Family units
- Parent-child relationships
- Partnerships
- Complex family structures
- Dynamic genealogy views

---

## Genealogy Engine

- Dynamic root person selection
- Dynamic Kekulé numbering
- Ancestor traversal
- Descendant traversal
- Relationship calculations

---

## Events

- Birth
- Baptism
- Confirmation
- Marriage
- Divorce
- Death
- Burial
- Residence
- Occupation
- Custom event types

---

## Sources

- Church records
- Civil records
- Archive records
- Publications
- Source citations

---

## Media

- Documents
- Photographs
- Certificates
- Scanned records

---

## Reporting

- Family cards
- Genealogy reports
- Ancestor views
- Descendant views
- Print-friendly layouts

---

## Data Exchange

- GEDCOM import
- GEDCOM export

---

# Repository Structure

```text
ancestra/
│
├── docs/
│   ├── domain-model.md
│   ├── architecture.md
│   ├── architecture-decisions.md
│   └── schema.sql
│
├── src/
├── src-tauri/
├── assets/
├── tests/
│
├── README.md
├── CONTRIBUTING.md
├── CHANGELOG.md
└── LICENSE
```

---

# Documentation

Project documentation is located in the `/docs` directory.

Important documents:

- domain-model.md
- architecture.md
- architecture-decisions.md
- schema.sql

---

# Long-Term Goals

- Comprehensive genealogy data management
- Excellent performance with large genealogy datasets
- Modern desktop user experience
- Flexible genealogy exploration
- Intelligent genealogy research workflows
- GEDCOM interoperability
- Extensible architecture
- Long-term maintainability

---

# Guiding Principle

> Ancestra is a project-based genealogy application, not a database application.
>
> The SQLite database is an implementation detail used to persist genealogy facts.
>
> The genealogy database stores a genealogy graph rather than family trees.
>
> Facts are stored.
>
> Views are generated.

---

# Author

Christian Neukam

Project: Ancestra
