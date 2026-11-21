# Ancestra

# Architecture Decisions

## Purpose

This document records significant architectural decisions for the Ancestra project.

The goal of Architecture Decision Records (ADRs) is to document why important decisions were made, preserve project knowledge, and provide clear architectural guidance for future development.

This document complements:

- domain-model.md
- architecture.md
- schema.sql

All architectural decisions documented here are considered binding unless explicitly replaced by a newer ADR.

---

# ADR-001

# SQLite as Primary Persistence Layer

## Status

Accepted

---

## Decision

Ancestra uses SQLite as its primary persistence technology.

The genealogy database is currently implemented as a single SQLite database file that is managed by an Ancestra project.

---

## Rationale

Ancestra is a local-first desktop application.

SQLite provides:

- Zero-configuration deployment
- Excellent read performance
- Good write performance
- Transaction safety
- Simple backup procedures
- High portability
- Easy distribution

The SQLite file becomes part of an Ancestra project and remains fully under user control.

---

## Consequences

Benefits:

- No server installation
- No network dependency
- Easy project portability
- Minimal operational complexity

Trade-offs:

- No built-in multi-user support
- No centralized server architecture

---

# ADR-002

# Database as Single Source of Truth

## Status

Accepted

---

## Decision

The genealogy database is the single source of truth for genealogy domain data.

Generated outputs must never become authoritative data sources.

---

## Rationale

Family cards, reports, exports, and visualizations are derived representations of genealogy data.

Persisting generated outputs would introduce:

- Data duplication
- Synchronization complexity
- Consistency risks

---

## Consequences

The following are generated from genealogy data:

- Family cards
- Reports
- Exports
- Print layouts
- Visualizations

Generated artifacts may be recreated at any time.

---

# ADR-003

# One Real Person = One Record

## Status

Accepted

---

## Decision

Every real person must exist exactly once within a project.

---

## Rationale

A single person may simultaneously appear as:

- Child
- Parent
- Partner
- Ancestor
- Descendant
- Member of multiple family units

Creating multiple records for the same person would compromise genealogy integrity.

---

## Consequences

The application must:

- Support duplicate detection
- Assist users when creating persons
- Encourage reuse of existing records

The final decision always remains with the user.

---

# ADR-004

# Project File as Primary Entry Point

## Status

Accepted

---

## Decision

The primary entry point of Ancestra is the project file.

Example:

```text
MyFamily.ancestra
```

Users interact with projects rather than databases.

---

## Rationale

Genealogy researchers think in terms of projects, not database files.

This approach follows established desktop software patterns similar to:

- Visual Studio Code workspaces
- Digital audio workstation projects
- Professional creative applications

The database becomes an internal implementation detail.

---

## Consequences

Users open:

```text
MyFamily.ancestra
```

not:

```text
ancestra.db
```

The project file becomes responsible for:

- Project metadata
- Database references
- Media locations
- Export locations
- Preferred root person
- Future project-specific configuration

The project file is considered the authoritative project boundary.

All project-specific state must be stored in the project file and never in the genealogy database.

---

# ADR-005

# Genealogy Graph Instead of Stored Trees

## Status

Accepted

---

## Decision

The genealogy database stores a genealogy graph.

The database does not store family trees.

---

## Rationale

Relationships are facts.

Trees are views.

A stored tree introduces redundancy because the same underlying relationships can be represented in multiple ways.

The genealogy graph provides a single canonical representation.

---

## Consequences

The database stores:

- Persons
- Family units
- Relationships
- Events
- Sources
- Places

The database does not store:

- Family trees
- Ancestor trees
- Descendant trees
- Relationship views

These representations are generated dynamically.

---

# ADR-006

# Dynamic Root Person

## Status

Accepted

---

## Decision

Any person within a project may act as the root person of a genealogy view.

---

## Rationale

Users frequently need to explore genealogy data from different perspectives.

Examples:

- Personal ancestry
- Child ancestry
- Spouse ancestry
- Historical ancestor descendants

The root person represents a viewing context, not genealogy data.

---

## Consequences

Changing the root person:

- Must never modify genealogy data
- Must never trigger database updates
- Must only affect generated views

The selected root person belongs to project configuration.

---

# ADR-007

# Dynamic Kekulé Numbering

## Status

Accepted

---

## Decision

Kekulé numbers are calculated dynamically.

They must never be persisted in the genealogy database.

---

## Rationale

A Kekulé number depends entirely on:

- The selected root person
- The current genealogy graph

The same individual can receive different Kekulé numbers depending on the chosen root person.

Therefore a Kekulé number is not a property of a person.

---

## Alternatives Considered

### Persist Kekulé Numbers

Rejected.

Persisting Kekulé numbers would:

- Create maintenance overhead
- Require renumbering operations
- Introduce consistency risks
- Prevent flexible root-person changes

---

## Consequences

The genealogy engine calculates Kekulé numbers when required.

The database schema contains no Kekulé number fields.

Root-person changes automatically produce a new valid numbering.

---

# ADR-008

# Separation of Genealogy Data and Configuration

## Status

Accepted

---

## Decision

Genealogy data, project configuration, and application settings are stored separately.

---

## Rationale

Each category has different responsibilities and lifecycle requirements.

Mixing them would unnecessarily couple unrelated concerns.

---

## Architecture

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

## Consequences

### Application Settings

Examples:

- Language
- Theme
- Window layout
- User preferences

Stored outside projects.

---

### Project Configuration

Examples:

- Project metadata
- Preferred root person
- Media paths
- Export paths

Stored in the project file.

---

### Genealogy Data

Examples:

- Persons
- Families
- Events
- Sources
- Notes

Stored in SQLite.

---

### Generated Views

Examples:

- Ancestor Trees
- Descendant Trees
- Family Cards
- Kekulé Numbering

Generated views are produced by the genealogy engine and are never persisted.

---

# ADR-009

# Family Relationship Model

## Status

Accepted

---

## Decision

Family relationships are represented by:

- Family
- FamilyMember
- FamilyChild

entities.

---

## Rationale

Genealogical data is often incomplete.

Examples:

- Unknown father
- Unknown mother
- Uncertain parentage
- Non-traditional family structures

A flexible relationship model is required.

---

## Rejected Alternative

Embedding:

- Parent A
- Parent B

directly into a family entity.

This model is not sufficiently flexible for real-world genealogy data.

---

## Consequences

Roles are explicitly stored.

Examples:

- FATHER
- MOTHER
- PARENT
- PARTNER
- UNKNOWN

---

# ADR-010

# Generic Event Model

## Status

Accepted

---

## Decision

Historical information is represented through a generic event model.

Participants are connected through event roles.

---

## Rationale

Genealogical events vary significantly across regions, cultures, and historical periods.

A generic model avoids schema changes whenever a new event type is introduced.

---

## Consequences

Supported examples include:

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

Future event types can be added without database schema changes.

---

# ADR-011

# Internal Database Identifiers

## Status

Accepted

## Decision

Version 1 uses database-generated integer primary keys
as internal entity identifiers.

Examples:

- person.id
- family.id
- event.id
- source.id

These identifiers are implementation details and are not
intended to provide long-term public identity.

## Rationale

Version 1 focuses on a single-project architecture.

Database-generated integer identifiers provide:

- Simplicity
- Excellent performance
- Small storage footprint
- Easy implementation

The complexity of stable public identifiers is not
justified for Version 1.

## Consequences

Future features may introduce stable public identifiers
for scenarios such as:

- GEDCOM interoperability
- Project merging
- Synchronization
- Cross-project references

The introduction of public identifiers remains outside
the scope of Version 1.

---

# Guiding Principle

The following principle governs all future architectural decisions:

> Ancestra is a project-based genealogy application, not a database application.
>
> The SQLite database is an implementation detail used to persist genealogy facts.
>
> The genealogy database stores a genealogy graph, not family trees.
>
> Facts are stored. Views are generated.
