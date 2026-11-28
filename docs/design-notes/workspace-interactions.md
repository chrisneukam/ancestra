# Workspace Interactions

## Purpose

This document defines how workspace interactions behave throughout Ancestra.

Its purpose is to provide a single source of truth for:

- Workspace behavior
- Focus ownership
- Navigator synchronization
- Inspector synchronization
- Tab behavior
- Navigation behavior

This document complements:

- ux-principles.md
- workspace-layout.md
- navigator-concept.md
- inspector-concept.md

Whenever workspace behavior is uncertain, the rules defined here should be preferred.

---

# Core Principle

Ancestra maintains exactly one active focus.

Workspace owns focus.

Navigator reflects focus.

Inspector reflects focus.

There is always a single source of truth for the current research context.

---

# Focus Ownership

The active workspace tab owns focus.

Examples:

Active Tab

Person Card: John Doe

↓

Workspace Focus

John Doe

↓

Navigator reflects John Doe

↓

Inspector reflects John Doe

---

Active Tab

Family Card: John Doe + Jane Smith

↓

Workspace Focus

Family

↓

Navigator reflects Family

↓

Inspector reflects Family

---

The Navigator never owns focus.

The Inspector never owns focus.

Both are reactive views.

---

# Focus Change

Focus changes whenever the active workspace tab changes.

Examples:

- User activates a different tab
- User opens a Person
- User opens a Family
- Search result becomes active
- Preview tab becomes active

Every focus change triggers:

Workspace Focus Updated

↓

Navigator Updated

↓

Inspector Updated

---

# Workspace Selection Rule

Workspace selection is authoritative.

Selecting an object in the workspace updates all surrounding areas.

Example:

User selects Family Tab

↓

Family becomes active focus

↓

Navigator updates selection

↓

Inspector updates context

---

No component may maintain an independent selection state.

---

# Navigator Interaction

The Navigator supports graph traversal.

The Navigator does not own focus.

Selecting an object in the Navigator requests a workspace change.

Example:

Navigator

↓

Select Person

↓

Workspace opens Person

↓

Person becomes active focus

↓

Navigator reflects new focus

↓

Inspector reflects new focus

---

The Navigator never changes without a workspace focus change.

---

# Inspector Interaction

The Inspector reflects the current research context.

The Inspector does not own focus.

The Inspector may provide:

- Context Information
- Metadata
- Relationship Summaries
- Research Status
- Navigation Actions

The Inspector must not become a secondary editing surface.

---

# Open Person

User selects Person

From:

- Navigator
- Search
- Family Card
- Inspector

↓

Workspace opens Person

↓

Person becomes active focus

↓

Navigator reflects Person

↓

Inspector reflects Person

---

# Open Family

User selects Family

From:

- Navigator
- Search
- Person Card
- Inspector

↓

Workspace opens Family

↓

Family becomes active focus

↓

Navigator reflects Family

↓

Inspector reflects Family

---

# Search Interaction

Search provides global navigation.

Search does not own focus.

Example:

Search Result

↓

Open Person

↓

Workspace opens Person

↓

Person becomes active focus

↓

Navigator updates

↓

Inspector updates

---

Search results never become workspace focus.

Opened objects become workspace focus.

---

# Preview Tabs

Navigation is exploratory.

Opening an object through navigation creates a preview tab.

Example:

User selects Person

↓

Preview Tab opens

↓

Workspace Focus changes

↓

Navigator updates

↓

Inspector updates

---

Only one preview tab may exist at a time.

Opening another preview object replaces the existing preview tab.

---

# Persistent Tabs

Editing represents commitment.

When editing begins:

Preview Tab

↓

Persistent Tab

The tab remains open until explicitly closed by the user.

Examples:

- Edit Person Name
- Add Child
- Add Parent
- Add Research Evidence
- Modify Family Information

Editing always promotes the current tab to a persistent tab.

---

# Preview To Persistent Transition

Example:

Open Person

↓

Preview Tab

↓

Edit Birth Date

↓

Tab becomes Persistent

↓

Workspace Focus remains unchanged

↓

Navigator remains unchanged

↓

Inspector remains unchanged

The promotion affects tab persistence only.

It does not change focus.

---

# Tab Activation

Activating a tab changes workspace focus.

Example:

User activates Person Tab

↓

Workspace Focus changes

↓

Navigator reflects Person

↓

Inspector reflects Person

---

Example:

User activates Family Tab

↓

Workspace Focus changes

↓

Navigator reflects Family

↓

Inspector reflects Family

---

# Tab Closing

Closing a tab removes the view from the workspace.

If the closed tab was active:

Workspace activates another open tab.

↓

Workspace Focus changes

↓

Navigator updates

↓

Inspector updates

If no workspace tab remains open:

Workspace displays its default state.

---

# Workspace Invariants

The following rules must always be true.

## Single Focus

Exactly one workspace object owns focus.

Never zero.

Never multiple.

---

## Reactive Navigator

Navigator always reflects workspace focus.

Navigator never maintains independent selection.

---

## Reactive Inspector

Inspector always reflects workspace focus.

Inspector never maintains independent selection.

---

## Navigation Opens Preview

Navigation creates preview tabs.

Navigation should remain lightweight.

---

## Editing Creates Persistence

Editing promotes preview tabs to persistent tabs.

Research work should never be lost through exploration.

---

## Workspace Is Authoritative

The active workspace tab is the single source of truth for the current research context.

All surrounding UI elements react to workspace state.
