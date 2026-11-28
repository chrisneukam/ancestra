# Workspace Layout

## Purpose

The workspace layout defines the primary user interface structure of Ancestra.

The layout follows modern productivity applications such as Visual Studio Code while being adapted for genealogy research workflows.

The goal is to support continuous research, fast navigation, contextual editing, and efficient movement through the genealogy graph.

---

# Core Principle

Ancestra uses a workspace-centric interaction model.

The active workspace tab defines the current context of the application.

All surrounding user interface elements react to this context.

```text
The active workspace tab owns focus.
Navigator reflects focus.
Inspector reflects focus.
```

The workspace is the single source of truth for the current user context.

More precisely, the active workspace tab provides the current focus context.

All surrounding user interface elements derive their state from the active tab.

Neither navigator nor inspector maintain independent selection states.

---

# Layout Structure

The main application window is divided into five areas.

```text
┌─────────────────────────────────────────────────────────────────┐
│ Toolbar                                                        │
├───────────────┬───────────────────────────────┬───────────────┤
│ Navigator     │ Workspace                     │ Inspector     │
│               │                               │               │
│               │                               │               │
│               │                               │               │
├───────────────┴───────────────────────────────┴───────────────┤
│ Status Bar                                                    │
└─────────────────────────────────────────────────────────────────┘
```

---

# Toolbar

The toolbar contains global commands that are independent of the current object.

Examples:

- Open Project
- Save Project
- Undo
- Redo
- Global Search
- Application Settings

The toolbar should remain compact and avoid object-specific editing functionality.

Object-specific editing belongs inside the workspace.

---

# Navigator

The navigator provides orientation and traversal capabilities within the genealogy graph.

The navigator is not the primary editing surface.

Its purpose is to answer the question:

> Where am I?

The navigator always reflects the active workspace tab.

Changing the active workspace tab immediately updates the navigator.

The navigator does not maintain its own focus state.

---

# Workspace

The workspace is the primary work area of the application.

Its purpose is to answer the question:

> What am I currently working on?

All primary editing occurs inside the workspace.

The workspace follows the principle:

```text
Workspace = Edit
```

Objects opened in the workspace may include:

- Person Cards
- Family Cards
- Place Cards
- Generated Views
- Research Views

Research Assets are not primary workspace objects.

Sources, media and notes are accessed through the research workflows of persons and families.

Evidence is displayed and edited within its genealogical context rather than through dedicated Source or Media workspace editors.

Future workspace object types may be added without changing the overall layout architecture.

---

# Inspector

The inspector provides contextual information about the active workspace object.

Its purpose is to answer the question:

> What additional information exists about this object?

The inspector follows the principle:

```text
Inspector = Inspect
```

The inspector is not the primary editing surface.

The inspector always reflects the active workspace tab.

Changing the active workspace tab immediately updates the inspector.

Examples:

- Relationships
- Research Status
- Tags
- References
- Sources
- Media Links
- Metadata
- Quick Actions

Inspector content is context-sensitive.

Different workspace object types may expose different inspector layouts.

---

# Status Bar

The status bar displays project-level information.

Examples:

- Active project name
- Database status
- Save state
- Background operations
- Future synchronization status

The status bar should remain informational and unobtrusive.

---

# Workspace Tabs

The workspace supports both persistent tabs and preview tabs.

This model is inspired by modern development environments and enables efficient exploration of large genealogy graphs.

---

## Persistent Tabs

Persistent tabs represent active work.

Examples:

- Person Cards
- Family Cards
- Places
- Generated Views

Research Assets do not create dedicated persistent tabs.

Evidence remains part of the workflow in which it is used.

Persistent tabs remain open until explicitly closed by the user.

Persistent tabs preserve the user's working context.

---

## Preview Tabs

Preview tabs support lightweight exploration.

Only one preview tab may exist at a time.

Opening another object through navigation or search replaces the existing preview tab.

This prevents excessive numbers of open tabs during research.

---

## Promoting Preview Tabs

A preview tab becomes a persistent tab when:

- the user explicitly activates the tab
- the user starts editing
- the user pins the tab

After promotion, the tab behaves like any other persistent workspace tab.

---

# Navigation Model

The navigator is a contextual explorer rather than a project-wide tree.

The navigator visualizes the local neighborhood of the active workspace object.

Examples:

For an active person:

```text
Person
├─ Parents
├─ Partners
└─ Children
```

For an active family:

```text
Family
├─ Partners
├─ Parents
└─ Children
```

The navigator therefore supports graph exploration rather than hierarchical tree navigation.

---

# Research Workflow Support

Genealogical research is exploratory by nature.

Users frequently move between:

- Persons
- Families
- Sources
- Places
- Media

The workspace layout is optimized for this workflow.

Navigation should remain lightweight.

Editing should preserve work.

```text
Navigation opens preview tabs.

Editing creates persistent tabs.
```

This allows rapid movement through the genealogy graph while keeping important work accessible.

---

# Family Card Importance

The Family Card is the central research hub of Ancestra.

While persons are the central business entity of the domain model, families represent the primary genealogy research context.

Users will frequently navigate between Family Cards and related Person Cards.

The workspace architecture therefore prioritizes fast transitions between both object types.

Future UX decisions should preserve this relationship.

---

# Future Enhancements

The workspace architecture should support future extensions without fundamental redesign.

Potential future enhancements include:

- Split editors
- Multiple workspace columns
- Pinned inspectors
- Additional navigator tools
- Advanced search views
- Duplicate review workspaces

These features should build upon the existing focus model rather than replacing it.
