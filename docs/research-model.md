# Research Model

## Purpose

This document defines how research-related domain entities are presented in the Ancestra user experience.

It bridges the gap between:

- Domain Model
- User Experience
- View Models
- Workflows

---

# Core Principle

Research Assets are a user experience concept.

Research Assets are not domain entities.

The domain model remains responsible for storing genealogy information.

The UX model is responsible for presenting evidence in a consistent way.

---

# Research Asset

A Research Asset represents evidence used during genealogy research.

Research Assets support facts.

Research Assets do not own research focus.

Research focus always belongs to:

- Persons
- Families

Research Assets exist within that context.

---

# Domain Mapping

Research Asset is a UX abstraction over multiple domain entities.

```text
Research Asset
├─ Source
├─ Media
└─ Note
```

The specific underlying entity remains visible where appropriate.

Examples:

Birth Certificate Source
Census Record Source
Family Photograph Media
Research Comment Note

All are presented as Research Assets.

---

# Evidence Model

Research Assets provide evidence.

```text
Person = Identity
Family = Context
Research Asset = Evidence
```

This is the fundamental genealogy research model of Ancestra.

---

# Ownership

Research Assets do not own genealogy facts.

Research Assets support genealogy facts.

Facts belong to persons.

Research context belongs to families.

Evidence may be attached to either.

Examples:

Person
└─ Birth Certificate

Family
└─ Marriage Certificate

Person
└─ Portrait Photograph

Family
└─ Census Household Record

# Workspace Behavior

Research Assets are supporting objects.

Research Assets are not primary workspace objects.

Research Assets do not own focus.

Research Assets do not define navigator structure.

Research Assets do not become graph-traversal objects.

Research Assets exist within person and family workflows.

# Navigation Behavior

Research Assets may be reached through:

- Family workflows
- Person workflows
- Search results
- Inspector links

Research Assets are not part of the genealogy graph.

The navigator traverses:

- Persons
- Families
- Relationships

The navigator does not traverse evidence.

# MVVM Implications

The domain layer exposes:

- Source
- Media
- Note

The view-model layer may expose:

- ResearchAssetViewModel

The view model unifies evidence presentation without changing the domain model.

This separation allows the domain model and user experience model to evolve independently.

---
