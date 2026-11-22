# Family Card Layout

## Purpose

This document describes the high-level layout principles of the Family Card.

The Family Card is a genealogy editing workspace.

It does not represent the internal database structure.

It represents the genealogy context that researchers work with.

---

## Core Principle

Partners form the center of a family.

The Family Card should visually communicate this principle.

The primary purpose of the card is to identify and edit a family context.

---

## Layout Principles

- Partners form the center of a family.
- Partners are displayed horizontally.
- The partner area is the primary visual focus of the Family Card.
- Parents of the partners are displayed below the partners within the same visual context.
- Children are displayed below the partners.
- The Family Card represents a genealogy context, not a database structure.

---

## Research Perspective

Researchers typically identify a family through its partners.

Examples:

- August Gansler and Ernestine Dührig
- Ernst Gansler and Elisabeth Pohl

Therefore, partner information should be immediately visible when a Family Card is opened.

---

## Relationship Structure

The Family Card should reflect genealogy relationships naturally.

Conceptually:

Partners
↓
Parents of the Partners
↓
Children
↓
Family Events
↓
Sources
↓
Media
↓
Notes

The exact visual representation may evolve over time.

These relationships should remain recognizable.

---

## Architectural Alignment

The Family Card is a generated editing view.

It must not expose internal database structures.

The Family Card should support research workflows rather than database-oriented workflows.

The implementation remains based on the genealogy graph.

The genealogy graph itself should remain invisible to the user whenever possible.

---

## Future Considerations

Future versions may introduce:

- Additional partner roles
- More than two partners
- Extended relationship visualization
- Family timeline integration
- Advanced genealogy visualizations

These features should preserve the central role of the partner area.
