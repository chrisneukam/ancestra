# Research Model

## Purpose

This document defines the conceptual separation between identity, context and evidence within Ancestra.

Its purpose is to ensure consistent UX decisions across:

- Workspace Design
- Family Card Design
- Person Card Design
- Research Asset Design
- Navigation Design
- Future Research Features

Whenever uncertainty exists, this document should be used together with ux-principles.md.

---

# Core Concepts

Ancestra separates genealogy information into three distinct concepts:

Person = Identity

Family = Context

Research Assets = Evidence

These concepts serve different purposes and should not be mixed.

---

# Identity

Persons represent identities within the genealogy graph.

Every genealogical fact ultimately belongs to one or more persons.

Examples:

- Names
- Birth Facts
- Death Facts
- Occupations
- Relationships
- Personal Events

The Person is the central genealogy entity of Ancestra.

---

# Context

Families provide genealogy context.

Researchers rarely investigate persons in isolation.

Instead, they often work within family relationships.

Examples:

- Partnerships
- Parents
- Children
- Household Context
- Shared Life Events

The Family Card acts as the primary research workspace because it naturally groups related persons and research activities.

Family provides context.

Family does not own identity.

---

# Evidence

Research Assets represent evidence that supports genealogy facts.

Research Assets are not identities.

Research Assets are not research contexts.

Research Assets provide evidence.

Examples:

- Sources
- Media
- Notes

Research Assets support genealogy research by documenting why a fact is believed to be true.

---

# Evidence Can Belong To Different Contexts

Research Assets may be attached to either persons or families depending on their genealogical meaning.

Examples:

Person Evidence

- Birth Certificate
- Death Certificate
- Portrait Photograph
- Military Record

Family Evidence

- Marriage Certificate
- Family Photograph
- Household Census Record
- Divorce Record

Ancestra should not force researchers into a single organizational model.

Research Assets should be attached where researchers naturally expect them.

---

# Primary And Supporting Objects

Not every object within Ancestra should become a primary workspace object.

Ancestra distinguishes between primary workspace objects and supporting research objects.

Primary Workspace Objects

- Person
- Family

Supporting Research Objects

- Source
- Media
- Note

Primary workspace objects own research focus.

Supporting research objects provide evidence and context.

Supporting objects should be edited within the workflow that uses them whenever possible.

---

# Research Asset Editing

Ancestra follows the principle:

Inline Editing First.

Research Assets should typically be edited within their surrounding research context.

Examples:

Person Card
→ Edit personal sources

Family Card
→ Edit family sources

Person Card
→ Edit personal notes

Family Card
→ Edit family notes

Research Asset editing should minimize context switching and avoid unnecessary editor views whenever possible.

---

# Research Focus

Researchers primarily work with:

- Persons
- Families
- Relationships

Research Assets support this work.

Research Assets are important but they should not become the center of the user experience.

The focus remains on genealogy research, not asset management.

---

# Navigation Implications

Researchers navigate the genealogy graph.

They do not navigate the database.

Navigation should primarily expose:

- Persons
- Families
- Relationships

Research Assets should remain accessible through:

- Their owning Person
- Their owning Family
- Search Results
- Inspector Views

The Navigator should not become a general-purpose asset browser.

---

# Decision Heuristic

When a UX decision is uncertain, ask:

Does this feature primarily support Identity, Context or Evidence?

Identity
→ Person

Context
→ Family

Evidence
→ Research Asset

The solution that preserves this separation should generally be preferred.
