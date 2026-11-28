# Navigator Selection

## Purpose

Defines how Navigator interaction affects the workspace.

---

# Flow

User selects Navigator Item

↓

Navigator requests workspace navigation

↓

Workspace opens target object

↓

Workspace Focus changes

↓

Navigator reflects Workspace

↓

Inspector reflects Workspace

---

# Invariant

Navigator never owns focus.

Navigator only requests navigation.

Workspace determines focus.
