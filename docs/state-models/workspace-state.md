# Workspace State

## Purpose

This document defines the state owned by the Workspace.

The Workspace is the primary state owner within Ancestra.

Workspace owns focus.

Navigator and Inspector derive their state from the Workspace.

---

# Responsibilities

The Workspace owns:

- Open Tabs
- Active Tab
- Preview Tab
- Current Focus

---

# Workspace State

Workspace

- ActiveTabId
- ActiveObjectType
- ActiveObjectId
- OpenTabs
- PreviewTabId

---

# Active Focus

The active workspace tab owns focus.

Examples:

Person Card
→ Focus = Person

Family Card
→ Focus = Family

---

# Open Tabs

The workspace may contain:

- Preview Tabs
- Persistent Tabs

---

# Preview Tab

At most one preview tab may exist.

Preview tabs are created through navigation.

Opening another preview replaces the current preview.

---

# Persistent Tabs

Persistent tabs represent committed work.

They remain open until explicitly closed.

Editing creates persistence.

---

# Derived State

Navigator State
← Workspace State

Inspector State
← Workspace State

Search State
← Workspace State

Workspace is the single source of truth.

# Focus Ownership

The workspace state tracks the active workspace tab.

The active tab defines the current focus object.

Navigator state and inspector state derive their context from the active workspace tab and do not maintain independent focus ownership.
