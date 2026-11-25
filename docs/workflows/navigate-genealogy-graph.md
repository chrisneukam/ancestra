## Workflow: Navigate Genealogy Graph

### Goal

Navigate efficiently through the genealogy graph without losing research context.

The workflow should support rapid movement between:

- Persons
- Families
- Related generations

while preserving editing context and minimizing unnecessary navigation effort.

Navigation is a core genealogy research activity.

---

### Starting Point

A genealogy project is open.

The user is currently working with a workspace object.

Examples:

- Person Card
- Family Card

The Explorer displays graph navigation targets related to the active workspace object.

---

### Core Principle

The active workspace object owns focus.

```text
Workspace owns focus.
Navigator reflects focus.
Inspector reflects focus.
```

The Explorer never owns focus.

The Explorer always reflects the active workspace object.

---

### Navigation Sources

Navigation may originate from:

- Explorer
- Search Results
- Family Card
- Person Card
- Inspector Actions
- Navigation History

All navigation follows the same workspace model.

---

### Explorer Behavior

The Explorer visualizes graph traversal opportunities around the active object.

The Explorer prioritizes navigation over information deduplication.

Objects may appear in multiple sections when this improves graph traversal.

Examples:

```text
Person: Anna Schmidt

Families
 ├─ Family: Johann Müller + Anna Schmidt
 └─ Family: Peter Weber + Anna Schmidt

Parents
 ├─ Karl Schmidt
 └─ Elisabeth Weber

Partners
 ├─ Johann Müller
 └─ Peter Weber

Children
 ├─ Peter Müller
 └─ Sandra Weber
```

The Explorer is a navigation tool rather than an editing surface.

---

### User Flow

The user selects a navigation target.

Examples:

```text
Parent
Partner
Child
Family
```

The selected object becomes the active workspace object.

The Explorer updates automatically.

The Inspector updates automatically.

The newly activated object determines the current genealogy context.

---

### Tab Behavior

Navigation is exploratory by nature.

Objects opened through navigation are initially opened as Preview Tabs.

Example:

```text
Family Müller
Anna Schmidt
[Karl Schmidt]
```

Only one Preview Tab may exist at a time.

Selecting another navigation target replaces the existing Preview Tab.

Example:

```text
Family Müller
Anna Schmidt
[Hugo Schmidt]
```

This prevents excessive numbers of open tabs during genealogy research.

---

### Promoting Preview Tabs

A Preview Tab becomes a Persistent Tab when:

- the user explicitly activates the tab
- the user begins editing
- the user pins the tab

Example:

```text
Preview Tab
    ↓
User edits
    ↓
Persistent Tab
```

Persistent Tabs remain open until explicitly closed.

---

### Existing Open Objects

When a navigation target is already open in a Persistent Tab:

- the existing tab receives focus
- no duplicate tab is created

This preserves orientation and prevents duplicate workspace objects.

---

### Person To Family Navigation

Researchers frequently move from a person to a family context.

Example:

```text
Person: Anna Schmidt

Families
 └─ Family: Johann Müller + Anna Schmidt
```

Selecting the family opens the corresponding Family Card.

The Family Card becomes the active workspace object.

---

### Family To Person Navigation

Researchers frequently move from a family context to an individual person.

Example:

```text
Family: Johann Müller + Anna Schmidt

Children
 └─ Peter Müller
```

Selecting the child opens the corresponding Person Card.

The Person Card becomes the active workspace object.

---

### Cross-Generation Navigation

The Explorer supports navigation across generations.

Example:

```text
Person
    ↓
Parents
```

or

```text
Person
    ↓
Children
```

The workflow allows users to move naturally through the genealogy graph without requiring specialized tree views.

---

### Relationship To Research

Genealogy research is inherently relational.

Researchers frequently follow relationship chains.

Examples:

```text
Person
 → Family
 → Child
 → Family
 → Parent
```

or

```text
Person
 → Partner
 → Family
 → Child
```

The navigation model should support this research behavior with minimal interaction cost.

---

### UX Goals

- Fast graph traversal
- Preserve research context
- Minimize navigation friction
- Prevent tab overload
- Support exploratory research
- Maintain orientation
- Maintain workspace consistency

---

### UX Principles Applied

#### Workspace Owns Focus

The active workspace object determines the active context.

#### Navigation Supports Editing

Navigation exists to support ongoing research and editing activities.

#### Consistent Entry And Return Points

Users can freely move through the graph while preserving previously opened workspace objects.

#### Exploration Before Commitment

Navigation opens Preview Tabs.

Editing creates Persistent Tabs.

#### Family = Context

Families provide the primary genealogy research context.

#### Person = Identity

Persons remain the authoritative source of person-specific information.

---

### Success Criteria

The workflow is successful when:

- Users can move naturally through the genealogy graph.
- Navigation never interrupts research activities.
- Preview Tabs prevent tab overload.
- Existing tabs are reused whenever possible.
- Navigator and Inspector always reflect the active workspace object.
- Users always understand their current genealogy context.
