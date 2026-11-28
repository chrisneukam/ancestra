# Navigator State

## Purpose

Defines the state displayed by the Navigator.

The Navigator derives all state from the active workspace focus.

The navigator never owns focus.

The navigator reflects the focus of the active workspace tab.

Changing workspace focus updates navigator state.

Changing navigator selection requests a workspace focus change.

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
