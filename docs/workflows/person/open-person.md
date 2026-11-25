# Workflow: Open Person

## Goal

Open an existing person within the current genealogy project.

Opening a person should provide immediate access to the Person View.

---

## Starting Point

A genealogy project is open.

At least one person exists within the genealogy graph.

---

## Entry Points

A person may be opened from multiple locations.

### Navigator

Persons displayed within the navigator can be opened directly.

### Search Results

Search results may contain persons.

### Family Card

Users may open persons directly from a Family Card.

Examples:

- Parent
- Child
- Partner

### Tree Views

Users may open persons from:

- Family Tree
- Ancestor Tree
- Descendant Tree
- Fan Chart

### Navigation History

Previously opened persons may be reopened through navigation history.

---

## User Flow

1. User selects an existing person.

2. Ancestra opens the corresponding tab.

If the person is already open:

- The existing tab receives focus.
- No duplicate tab is created.

3. The Person View becomes the active workspace view.

4. Existing genealogy information is displayed.

Examples:

- Names
- Personal Facts
- Life Events
- Sources
- Media
- Notes

5. The user may immediately edit information.

No edit mode must be activated.

6. Changes are reflected directly within the Person View.

7. Unsaved changes are indicated by the tab.

Example:

[ ● Ernst Gansler ]

---

### Tab Behavior

Persons opened through navigation are initially opened as Preview Tabs.

If the person is already open in a Persistent Tab:

- The existing tab receives focus.
- No duplicate tab is created.

Preview Tabs become Persistent Tabs when:

- the user explicitly activates the tab
- the user starts editing
- the user pins the tab

This supports rapid genealogy graph exploration while preventing excessive numbers of open tabs.

---

## Result

The selected person is displayed.

The user may immediately continue research and editing.

---

## Person View

The Person View used for opening an existing person is identical to the Person View used when creating a person.

See:

create-person.md

Ancestra follows the principle:

Create Equals Open Empty

Creating and opening a person must use the same editing environment.

---

## UX Goals

- Direct access to genealogy information
- No intermediate screens
- No edit dialogs
- Minimal navigation overhead
- Consistent editing experience

---

## UX Principles Applied

### Create Equals Open Empty

Creation and opening use the same Person View.

### Inline Editing First

All editing happens directly within the Person View.

### Navigation Supports Editing

Navigation exists to support research and data entry.

### Preserve Orientation

The currently opened person remains visible through tabs and workspace context.

---

## Future Considerations

Future versions may support:

- Multiple person tabs
- Pinned tabs
- Split views
- Advanced navigation history

These additions must preserve workflow consistency.

---

## Success Criteria

The workflow is successful when:

- An existing person can be opened with a single action.
- The Person View appears immediately.
- Editing can begin without additional interaction.
- The same Person View is used for both creation and editing.
