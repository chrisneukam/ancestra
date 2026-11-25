# Workflow: Search Graph

## Goal

Search the genealogy graph for persons, families, sources, places, media, and other genealogy objects.

Search provides direct access to objects regardless of their current location within the genealogy graph.

The workflow supports rapid movement through large genealogy projects while preserving research context.

---

## Research Philosophy

Genealogy projects naturally grow over time.

As the genealogy graph expands, manual navigation alone becomes insufficient.

Search complements graph traversal by allowing users to jump directly to known objects.

```text
Explorer
    → Local Navigation

Search
    → Global Navigation
```

Both navigation models work together.

---

## Starting Point

A genealogy project is open.

The user is currently working within the Workspace Layout.

The Search Tool is available within the Navigator.

---

## Entry Points

Search may be activated through:

- Navigator Search Tool
- Keyboard Shortcut
- Future Command Palette

The user may access Search from any workspace object.

---

## Search Tool

The Search Tool is displayed within the Navigator area.

Only one Navigator Tool is visible at a time.

Example:

```text
Explorer
Search
Duplicate Review
```

Activating Search replaces the currently visible Navigator Tool.

The active workspace object remains unchanged.

---

## Search Behavior

The Search Tool provides immediate search capabilities.

The search field is focused automatically when the Search Tool is opened.

Example:

```text
Search

[ Anna Schmidt            ]
```

The user may immediately begin typing.

No additional interaction is required.

---

## Search Scope

Search operates across the entire genealogy graph.

Search results may include:

- Persons
- Families
- Sources
- Places
- Media

Future versions may include additional object types.

---

## Search Results

Matching results appear immediately while typing.

Example:

```text
Anna

Persons
 ├─ Anna Schmidt
 └─ Anna Müller

Families
 └─ Family: Johann Müller + Anna Schmidt
```

Results should remain grouped by object type.

This helps users understand the nature of each result before navigation occurs.

---

## Result Selection

The user selects a search result.

The selected object becomes the active workspace object.

The Explorer updates automatically.

The Inspector updates automatically.

The newly selected object becomes the active genealogy context.

---

## Workspace Integration

Search navigation follows the same rules as Explorer navigation.

The workflow never introduces a separate navigation model.

Examples:

```text
Explorer Result
    ↓
Workspace Object

Search Result
    ↓
Workspace Object
```

Users should experience identical behavior regardless of how navigation begins.

---

## Preview Tabs

Objects opened through search are initially opened as Preview Tabs.

Example:

```text
Family Müller
Anna Schmidt
[Karl Schmidt]
```

Only one Preview Tab may exist at a time.

Selecting another search result replaces the current Preview Tab.

This allows rapid exploration without creating excessive numbers of tabs.

---

## Promoting Preview Tabs

A Preview Tab becomes a Persistent Tab when:

- the user explicitly activates the tab
- the user begins editing
- the user pins the tab

Persistent Tabs remain open until explicitly closed.

---

## Existing Open Objects

When the selected object is already open in a Persistent Tab:

- the existing tab receives focus
- no duplicate tab is created

This preserves orientation and avoids duplicate workspace objects.

---

## Search And Graph Traversal

Search and Explorer navigation complement each other.

Example:

```text
Search
    ↓
Person

Explorer
    ↓
Family

Explorer
    ↓
Child
```

Search is frequently used to enter a research context.

Explorer is frequently used to continue research within that context.

---

## UX Goals

- Immediate access to known objects
- Rapid movement through large genealogy projects
- Consistent navigation behavior
- Minimal interaction cost
- Preserve research context
- Prevent tab overload

---

## UX Principles Applied

### Always Ready For Input

The search field is immediately available.

### Navigation Supports Editing

Search helps users reach the desired research context quickly.

### Explorer And Search Are Complementary

Search provides global navigation.

Explorer provides local graph traversal.

### Workspace Owns Focus

Selected search results become active workspace objects.

### Exploration Before Commitment

Search opens Preview Tabs.

Editing creates Persistent Tabs.

---

## Success Criteria

The workflow is successful when:

- Users can locate genealogy objects quickly.
- Search results appear immediately.
- Search and Explorer follow identical navigation rules.
- Preview Tabs prevent unnecessary tab creation.
- Existing tabs are reused whenever possible.
- Users can move seamlessly between search and graph traversal.
