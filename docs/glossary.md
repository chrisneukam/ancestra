# Glossary

## Purpose

This glossary defines the terminology used throughout Ancestra.

Its purpose is to provide a shared language for:

- UX Design
- Architecture Design
- Development
- Documentation
- AI Assistants

Whenever terminology is ambiguous, the definitions in this document should be preferred.

---

# Core Concepts

## Person

A Person represents an individual identity within the genealogy graph.

Person = Identity

Examples:

- John Doe
- Jane Smith

A Person owns genealogy facts.

Examples:

- Names
- Birth Information
- Death Information
- Occupations
- Personal Events

Data belongs to persons.

---

## Family

A Family represents a genealogy context connecting persons.

Family = Context

Examples:

- Parents and Children
- Partners
- Households

A Family does not replace persons.

A Family provides the context in which genealogy research is often performed.

Research happens in families.

---

## Research Asset

A Research Asset represents evidence supporting genealogy research.

Research Asset = Evidence

Research Assets do not represent people or relationships.

Research Assets support research.

Examples:

- Sources
- Media
- Notes

---

# Research Assets

## Source

A Source describes where genealogy information originates.

Examples:

- Church Record
- Civil Register
- Census Record
- Military Archive
- Family Book

A Source answers:

Where does this information come from?

---

## Media

Media represents files used during genealogy research.

Examples:

- PDF Documents
- Photographs
- Scans
- Maps

Media answers:

What evidence is available?

---

## Note

A Note represents researcher-authored text.

Examples:

- Research Notes
- Transcriptions
- Interpretations
- Open Questions
- Hypotheses

A Note answers:

What does the researcher know or want to remember?

---

# Workspace Concepts

## Workspace

The Workspace is the central working area of Ancestra.

The Workspace owns focus.

All surrounding UI elements react to workspace state.

Workspace = Focus Owner

---

## Workspace Object

A Workspace Object is a primary object that may occupy workspace focus.

Current Workspace Objects:

- Person
- Family

Workspace Objects represent the primary focus of genealogy research.

---

## Active Tab

The Active Tab is the currently visible workspace tab.

The Active Tab owns workspace focus.

Changing the Active Tab changes the current research context.

---

## Preview Tab

A Preview Tab is a temporary workspace tab used for exploration.

Characteristics:

- Created through navigation
- Replaced by subsequent previews
- Does not remain open automatically

Navigation opens Preview Tabs.

---

## Persistent Tab

A Persistent Tab represents committed work.

Characteristics:

- Remains open
- Must be closed explicitly
- Protects ongoing research

Editing creates Persistent Tabs.

---

# Navigation Concepts

## Navigator

The Navigator supports traversal of the genealogy graph.

Navigator = Graph Traversal

The Navigator reflects workspace focus.

The Navigator never owns focus.

The Navigator primarily exposes:

- Persons
- Families
- Relationships

Researchers navigate the graph.

They do not navigate the database.

---

## Search

Search provides global navigation.

Search = Global Navigation

Search allows researchers to find objects throughout the project.

Search results never own focus.

Opened objects become workspace focus.

---

## Inspector

The Inspector provides contextual information about the current focus.

Inspector = Context Reflection

The Inspector reflects workspace focus.

The Inspector never owns focus.

The Inspector may provide:

- Metadata
- Research Status
- Relationship Summaries
- Related Objects

The Inspector is not a primary editing surface.

---

# Focus Concepts

## Focus

Focus represents the current research context.

Exactly one object owns focus at any time.

Focus is determined by the active workspace tab.

---

## Focus Owner

The Focus Owner is the workspace object currently controlling application context.

Only one Focus Owner may exist at a time.

Current Focus Owner:

- Active Workspace Tab

---

## Single Focus Principle

Ancestra maintains exactly one active focus.

Workspace owns focus.

Navigator reflects focus.

Inspector reflects focus.

There is always a single source of truth for the current research context.

---

# Research Concepts

## Research Context

A Research Context is the active genealogy situation being investigated.

Examples:

- A Person
- A Family

Research Assets support a Research Context.

---

## Evidence

Evidence is information supporting genealogy conclusions.

Evidence is represented through Research Assets.

Evidence may be attached to:

- Persons
- Families

depending on genealogical meaning.

---

# Design Principles

## Identity

Identity represents who existed.

Identity is modeled by Persons.

Person = Identity

---

## Context

Context represents how persons are connected.

Context is modeled by Families.

Family = Context

---

## Evidence

Evidence represents why information is believed to be true.

Evidence is modeled by Research Assets.

Research Asset = Evidence

---

# Guiding Statements

Person = Identity

Family = Context

Research Asset = Evidence

Workspace owns focus.

Navigator reflects focus.

Inspector reflects focus.

Navigation opens Preview Tabs.

Editing creates Persistent Tabs.

Research happens in families.

Data belongs to persons.

Researchers navigate the graph.

They do not navigate the database.
