# UX Decision 009

# Navigator Is Graph Traversal

## Status

Accepted

---

## Context

Many genealogy applications expose database structures through navigation trees.

This increases complexity and exposes implementation details.

---

## Decision

Navigator = Graph Traversal

The Navigator exposes genealogy relationships.

Researchers move through:

- Persons
- Families
- Relationships

The Navigator should not become a general-purpose project browser.

---

## Consequences

The genealogy graph remains the primary navigation model.

Technical structures remain hidden.

The application stays aligned with the research workflow.
