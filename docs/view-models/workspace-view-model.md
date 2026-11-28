# Workspace ViewModel

## Purpose

The Workspace ViewModel is the central state owner of the application.

It owns:

- Open Tabs
- Active Tab
- Current Focus
- Preview Tab

All surrounding areas derive their state from the Workspace.

Workspace owns focus.

---

# Properties

ActiveTab

OpenTabs

PreviewTab

FocusObjectType

FocusObjectId

---

# Commands

OpenPerson

OpenFamily

ActivateTab

CloseTab

PromotePreviewTab

---

# Responsibilities

Manage workspace tabs.

Manage focus.

Coordinate navigation.

Provide state to Navigator and Inspector.

---

# Invariants

Workspace owns focus.

Exactly one active tab exists.

At most one preview tab exists.
