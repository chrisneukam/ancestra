# Family Card Concept

## Purpose

The Family Card is the primary genealogy research workspace within Ancestra.

While persons represent the central business entities of the genealogy graph, families represent the primary research context.

Most genealogy research activities naturally occur around families rather than isolated individuals.

The Family Card therefore serves as the central research hub of the application.

The Family Card is the primary research workspace of Ancestra.

This does not change the underlying domain model.

Persons remain the central identity entities of the genealogy graph.

Families provide the context in which genealogy research is performed.

---

# Relationship To The Domain Model

The Family Card is a workspace representation of a Family.

It is not the Family entity itself.

The Family entity belongs to the genealogy graph.

The Family Card is a user interface projection of that entity and its related research context.

---

# Core Principles

The Family Card is research-oriented rather than record-oriented.

The Family Card focuses on relationships, context, and history.

The Family Card should support extended research sessions without requiring users to frequently switch workspace objects.

The Family Card follows the principle:

```text
Research happens in families.
Data belongs to persons.
```

---

# Design Goals

The Family Card should:

- provide immediate family context
- support rapid navigation to related persons
- expose relevant family history
- centralize research assets
- minimize dialog usage
- support inline editing workflows
- remain usable for both small and complex family structures

The Family Card should not:

- behave like a traditional form editor
- expose database structures
- require excessive navigation to related persons
- duplicate Inspector functionality

---

# Information Hierarchy

The Family Card prioritizes people over events and events over research assets.

```text
People
    ↓
History
    ↓
Research Assets
```

Users should immediately understand who belongs to the family before exploring historical events or supporting research material.

---

# Layout Structure

```text
Family Header
────────────────

Partners
────────────────

Children
────────────────

Family Timeline
────────────────

Research Assets
────────────────
```

The layout follows the natural progression of genealogy research:

1. Who belongs to this family?
2. What happened in this family?
3. What evidence supports this research?

---

# Family Header

The Family Header provides high-level identification and orientation.

Examples:

- Family Name
- Family Identifier
- Research Status
- Summary Information

The header should remain compact.

The primary purpose is orientation rather than data entry.

---

# Partners Section

The Partners section defines the foundation of the family.

Partner cards should remain immediately visible.

Example:

```text
Partners

Anna Schmidt
Johann Müller
```

Partner information should be editable using inline editing principles.

Clicking a partner opens the corresponding Person Card.

Navigator and Inspector update according to the newly active workspace object.

---

# Children Section

The Children section displays all children belonging to the family.

Example:

```text
Children

Peter Müller
Maria Müller
Karl Müller
```

Children should support:

- inline creation
- inline editing
- quick navigation
- drag-and-drop reordering (future)

The Children section is considered a core area of the Family Card.

---

# Family Timeline

The Family Timeline presents the chronological history of the family.

Examples:

- Marriage
- Births
- Baptisms
- Residences
- Census Records
- Divorces
- Deaths

Events should be presented chronologically.

The Timeline provides historical context for the family as a whole.

---

## Future Timeline Vision

Future versions may provide a visual timeline representation.

Example:

```text
Marriage ─ Birth ─ Birth ─ Census ─ Residence
```

A visual timeline may support:

- temporal orientation
- research discovery
- gap identification
- relationship understanding

The timeline should always remain derived from genealogy facts rather than stored separately.

---

# Research Assets

Research Assets consolidate the supporting research material connected to the family.

Examples:

- Sources
- Media
- Notes

Research Assets represent connected research information rather than research quality.

The purpose is to provide access to available evidence and documentation.

---

## Research Asset Counts

Asset counts may be displayed to provide quick orientation.

Example:

```text
Sources: 12
Media: 5
Notes: 3
```

Counts are descriptive rather than prescriptive.

The Family Card never evaluates the completeness of genealogical research.

Incomplete data is normal.

---

# Navigation Behavior

The Family Card acts as a navigation hub.

Users frequently transition between:

```text
Family
→ Person
→ Family
→ Person
```

The Family Card should support this workflow with minimal friction.

Related objects are primarily opened through Preview Tabs.

Editing automatically promotes Preview Tabs to Persistent Tabs.

---

# Workspace Integration

The Family Card is a workspace object.

It follows all workspace principles.

```text
Workspace owns focus.
Navigator reflects focus.
Inspector reflects focus.
```

The active Family Card determines the context of the surrounding interface.

---

# Relationship To Person Cards

Person Cards and Family Cards serve different purposes.

Person Cards focus on individual information.

Family Cards focus on relationship context.

```text
Person = Individual

Family = Context
```

Both object types complement each other and are expected to be used together throughout research workflows.

---

# Long-Term Vision

The Family Card should become the most powerful genealogy research workspace within Ancestra.

Future enhancements may include:

- visual timelines
- relationship visualization
- split workspace support
- advanced source integration
- research guidance tools

Future enhancements should strengthen the Family Card as the central genealogy research hub without changing its fundamental role.
