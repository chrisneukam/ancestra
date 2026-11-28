# Person Card State

## Purpose

Defines the state required by a Person Card.

A Person Card represents genealogy identity.

Person = Identity

---

# Person Card State

PersonCard

- PersonId
- Names
- Sex
- Events
- Families
- ResearchAssets

---

# Events

Examples:

- Birth
- Baptism
- Death
- Burial

---

# Families

Connected family contexts.

Examples:

- Parents Family
- Partner Families

---

# Research Assets

Asset Types

- Sources
- Media
- Notes

Research Assets provide evidence.

---

# Commands

Examples:

- AddEvent
- UpdateEvent
- AddResearchEvidence
- OpenFamily

Commands modify state.

The card remains the editing surface.
