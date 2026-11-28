# Navigator State

## Purpose

Defines the state displayed by the Navigator.

The Navigator derives all state from the active workspace focus.

The Navigator never owns focus.

---

# Navigator State

Navigator

- FocusObjectType
- FocusObjectId
- RelatedPersons
- RelatedFamilies

---

# Derived From

Workspace

- ActiveObjectType
- ActiveObjectId

---

# Behavior

Workspace Focus Changes

↓

Navigator Rebuilds Context

↓

Navigator Displays Related Graph Nodes

---

# Restrictions

The Navigator must never maintain:

- Independent Selection
- Independent Focus
- Independent Context

Workspace remains authoritative.
