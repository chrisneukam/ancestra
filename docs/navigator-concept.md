# Navigator Concept

## Purpose

The navigator provides orientation and graph traversal capabilities within an Ancestra project.

It allows users to move efficiently through genealogy data while maintaining awareness of the current research context.

The navigator is not the primary editing surface.

The navigator answers the question:

> Where am I?

---

# Core Principle

The navigator does not own focus.

The navigator always reflects the active workspace tab.

```text
Workspace owns focus.
Navigator reflects focus.
Inspector reflects focus.
```

The navigator therefore acts as a contextual explorer rather than an independent project tree.

---

# Goals

The navigator should:

- support rapid graph traversal
- provide orientation within genealogy data
- minimize navigation friction
- reduce context switching costs
- avoid excessive workspace tab creation
- remain simple and predictable

The navigator must not:

- become a secondary editing surface
- maintain independent selection state
- duplicate functionality of the workspace
- expose database structures

---

# Navigator Tools

The navigator area may host multiple tools.

Only one tool is visible at a time.

This approach is inspired by modern productivity applications such as Visual Studio Code.

Initial navigator tools are expected to include:

```text
Explorer
Search
Duplicates
```

Additional tools may be introduced in future versions without changing the overall workspace model.

---

# Explorer Tool

The Explorer is the primary navigator.

Its purpose is to visualize the local neighborhood of the currently active object.

The Explorer does not represent the entire genealogy graph.

The Explorer does not attempt to display complete family trees.

Instead, it displays the immediate research context of the active object.

---

## Person Context

When a Person Card is active, the Explorer displays relationships around that person.

Example:

```text
Person: Anna Schmidt

Parents
 ├─ Karl Schmidt
 └─ Elisabeth Weber

Partners
 └─ Johann Müller

Children
 ├─ Peter Müller
 └─ Maria Müller
```

The displayed structure represents contextual relationships rather than a genealogy tree.

---

## Family Context

When a Family Card is active, the Explorer displays the local family context.

Example:

```text
Family: Müller Family

Partners
 ├─ Johann Müller
 └─ Anna Schmidt

Children
 ├─ Peter Müller
 └─ Maria Müller

Sources
 ├─ Marriage Record
 └─ Census Record
```

The Family Card remains the primary genealogy research hub.

The Explorer provides fast access to connected objects.

---

# Navigation Behavior

Selecting an object in the Explorer changes the active workspace context.

The navigator itself does not maintain navigation history.

Navigation is delegated to the workspace.

Examples:

```text
Click Person
→ Open Person Card

Click Family
→ Open Family Card

Click Source
→ Open Source Card
```

After navigation, the Explorer updates to reflect the newly active workspace object.

---

# Search Tool

The Search Tool provides global access to the genealogy graph.

Search is the primary mechanism for locating specific objects within large projects.

The Search Tool complements the Explorer.

The Explorer answers:

> What is connected to my current object?

The Search Tool answers:

> Where is the object I am looking for?

---

## Search Results

Search results are displayed inside the Search Tool itself.

Results should not require opening additional workspace objects merely for inspection.

Selecting a result opens the corresponding workspace object.

Example:

```text
Search: Anna

Results
 ├─ Anna Schmidt
 ├─ Anna Müller
 └─ Anna Weber
```

---

# Duplicate Review Tool

The Duplicate Review Tool supports duplicate detection workflows.

Its purpose is to expose potential duplicate persons identified by the duplicate detection engine.

Examples:

```text
Potential Duplicates

Anna Schmidt
↔
Anna Schmitt

Confidence: High
```

Selecting a candidate opens the corresponding workspace objects.

The actual merge workflow is performed within the workspace.

---

# Interaction With Workspace Tabs

The navigator works closely with the workspace tab system.

Navigation is exploratory by nature.

Therefore navigation actions open Preview Tabs by default.

```text
Navigation opens Preview Tabs.
```

This allows users to explore genealogy data without generating excessive numbers of open tabs.

---

# Preview Tab Replacement

Only one Preview Tab may exist at a time.

Example:

```text
Family Müller
Anna Schmidt
[Karl Schmidt]
```

Selecting another object replaces the existing Preview Tab.

```text
Family Müller
Anna Schmidt
[Hugo Schmidt]
```

This keeps workspace tab counts manageable during research sessions.

---

# Promoting Tabs

Preview Tabs become Persistent Tabs when:

- the user explicitly selects the tab
- the user begins editing
- the user pins the tab

```text
Editing creates Persistent Tabs.
```

Persistent Tabs represent active work and are not automatically replaced.

---

# Future Extensions

The navigator architecture should support additional tools without requiring redesign.

Potential future tools include:

- Favorites
- Recent Objects
- Research Tasks
- Bookmarks
- Project Statistics
- Relationship Explorer

Future tools must follow the same focus model and remain subordinate to the active workspace.
