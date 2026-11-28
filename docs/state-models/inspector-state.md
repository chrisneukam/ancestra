# Inspector State

## Purpose

Defines the contextual state displayed by the Inspector.

The Inspector reflects the current workspace focus.

---

# Inspector State

Inspector

- FocusObjectType
- FocusObjectId
- Metadata
- ResearchHealth
- ResearchAssets
- RelatedObjects

---

# Derived From

Workspace

- ActiveObjectType
- ActiveObjectId

---

# Behavior

Workspace Focus Changes

↓

Inspector Reloads Context

↓

Inspector Displays Information

---

# Restrictions

The Inspector must never:

- Edit Primary Data
- Own Focus
- Own Selection State

Inspector is a contextual view.
