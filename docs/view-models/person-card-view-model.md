# Person Card ViewModel

## Purpose

Represents a person within the Workspace.

Person = Identity

The Person Card is the primary editing surface for person data.

---

# Properties

PersonId

Names

Sex

Events

Families

ResearchAssets

---

# Event Types

Birth

Baptism

Marriage

Death

Burial

Custom Events

---

# Research Assets

Sources

Media

Notes

---

# Commands

AddName

UpdateName

AddEvent

UpdateEvent

DeleteEvent

AddResearchEvidence

OpenFamily

---

# Responsibilities

Present person identity.

Edit person data.

Expose connected family contexts.

Provide person-related research assets.

---

# Invariants

Data belongs to persons.

Person data is edited within the Person Card.
