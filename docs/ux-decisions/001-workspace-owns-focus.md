# UX Decision 001

# Workspace Owns Focus

## Status

Accepted

---

## Context

The application contains multiple visible areas.

- Workspace
- Navigator
- Inspector
- Search

Without a clear ownership model, different areas could maintain conflicting contexts.

---

## Decision

The Workspace owns focus.

The active workspace tab determines the current research context.

Navigator and Inspector reflect workspace focus.

Neither component maintains an independent selection state.

---

## Consequences

A single source of truth exists.

Workspace behavior remains predictable.

Context synchronization becomes straightforward.

Future features must integrate with workspace focus ownership.
