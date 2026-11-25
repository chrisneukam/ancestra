# Person Card Concept

## Purpose

The Person Card is the primary editing workspace for person-specific genealogy data.

While families provide the primary genealogy research context, persons remain the central business entities of the genealogy graph.

The Person Card allows users to view and edit information that belongs directly to a person.

---

# Core Principles

The Person Card focuses on person data.

The Person Card does not focus on genealogy relationships.

Relationship navigation is provided by the Explorer.

Research context is provided by Family Cards.

The Person Card follows the principle:

```text
Data belongs to persons.

Research happens in families.
```

---

# Design Goals

The Person Card should:

- support efficient person data entry
- support inline editing
- expose person-specific information
- visualize personal history
- integrate naturally with the genealogy graph
- avoid duplication of relationship information

The Person Card should not:

- become a research hub
- duplicate Family Card functionality
- duplicate Explorer functionality
- duplicate Inspector functionality

---

# Information Hierarchy

The Person Card prioritizes identity before history and history before supporting research information.

```text
Identity
    ↓
Life History
    ↓
Research Assets
```

Users should immediately understand who a person is before exploring the person's life events and supporting research material.

---

# Layout Structure

```text
Person Header
────────────────

Names
────────────────

Personal Facts
────────────────

Life Events
────────────────

Research Assets
────────────────
```

The layout follows the natural flow of genealogy research.

---

# Person Header

The Person Header provides immediate identification and orientation.

Examples:

- Primary Display Name
- Research Status
- Person Identifier

The header should remain compact and focused.

---

# Names

Names are core genealogy data.

The Names section contains information used to identify a person throughout the genealogy graph.

Examples:

- Given Names
- Surname
- Birth Name
- Married Name
- Alternative Names
- Name Variants

Names should support inline editing.

---

# Personal Facts

The Personal Facts section contains attributes that directly describe the person.

Examples:

- Gender
- Occupation
- Religion
- Nationality
- Identifiers

Only information that belongs directly to the person should appear in this section.

Relationship information belongs elsewhere.

---

# Life Events

The Life Events section contains person-specific genealogy events.

Examples:

- Birth
- Baptism
- Confirmation
- Residence
- Occupation Events
- Death
- Burial

Events are editable within the Person Card.

Life Events represent factual genealogy data rather than generated views.

---

## Personal Timeline

The Person Card may present a timeline visualization of known life events.

The timeline is a generated view.

Its purpose is to provide chronological orientation.

The timeline helps researchers understand:

- event order
- temporal relationships
- research context
- historical progression

The timeline never replaces event editing.

Events remain editable through the standard workspace experience.

The timeline visualizes known facts and does not evaluate research completeness.

---

# Research Assets

Research Assets consolidate supporting research information connected to the person.

Examples:

- Sources
- Media
- Notes

Research Assets provide access to supporting evidence and documentation.

Research Assets represent available information.

They do not represent research quality.

Examples:

```text
Sources: 12
Media: 6
Notes: 4
```

Counts are descriptive rather than prescriptive.

Incomplete data is normal.

---

# Relationship Information

The Person Card intentionally does not serve as the primary location for relationship exploration.

Relationships are exposed through the Explorer.

Examples:

- Families
- Parents
- Partners
- Children

This avoids duplication and preserves a clear separation of responsibilities.

```text
Person Card
    → Identity

Explorer
    → Relationships

Family Card
    → Research Context
```

---

# Workspace Integration

The Person Card is a workspace object.

It follows all workspace principles.

```text
Workspace owns focus.
Navigator reflects focus.
Inspector reflects focus.
```

The active Person Card determines the context of surrounding user interface components.

---

# Relationship To Family Cards

Person Cards and Family Cards complement each other.

They serve different purposes and should not duplicate each other.

```text
Person = Identity

Family = Context
```

Users are expected to move frequently between both object types during research activities.

---

# Long-Term Vision

The Person Card should become the definitive location for maintaining person-specific genealogy information.

Future enhancements may include:

- advanced timeline visualization
- event groupings
- event filtering
- enhanced source integration
- research workflow support

Future enhancements should reinforce the role of the Person Card as the home of person data while preserving the Family Card as the primary genealogy research hub.
