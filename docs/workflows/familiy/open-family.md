# Workflow: Open Family

## Goal

Open an existing family within the current genealogy project.

Opening a family should provide immediate access to the Family Card.

---

## Starting Point

A genealogy project is open.

At least one family exists within the genealogy graph.

---

## Entry Points

A family may be opened from multiple locations.

### Navigator

Families displayed within the navigator can be opened directly.

### Search Results

Search results may contain families.

### Relationship Navigation

Users may navigate from:

- Person View
- Family Tree
- Fan Chart
- Family Card

to an existing family.

### History Navigation

Previously opened families may be reopened through navigation history.

---

## User Flow

1. User selects an existing family.

2. Ancestra opens the corresponding tab.

If the family is already open:

- The existing tab receives focus.
- No duplicate tab is created.

3. The Family Card becomes the active workspace object.

4. Existing genealogy information is displayed.

Examples:

- Parents
- Children
- Events
- Notes
- Sources
- Media References

5. The user may immediately edit information.

No edit mode must be activated.

6. Changes are reflected directly within the Family Card.

7. Unsaved changes are indicated by the tab.

Example:

[ ● Family Gansler ]

---

### Tab Behavior

Families opened through navigation are initially opened as Preview Tabs.

If the family is already open in a Persistent Tab:

- The existing tab receives focus.
- No duplicate tab is created.

Preview Tabs become Persistent Tabs when:

- the user explicitly activates the tab
- the user starts editing
- the user pins the tab

This supports rapid genealogy graph exploration while preventing excessive numbers of open tabs.

---

## Result

The selected family is displayed.

The user may immediately continue genealogy research and editing.

---

## Family Card View

The Family Card used for opening an existing family is identical to the Family Card used when creating a family.

See:

create-family.md

Ancestra follows the principle:

Create Equals Open Empty

Creating and opening a family must use the same editing environment.

---

## UX Goals

- Direct access to family information
- No intermediate screens
- No edit dialogs
- Minimal navigation overhead
- Consistent editing experience

---

## UX Principles Applied

### Create Equals Open Empty

Creation and opening use the same Family Card.

### Inline Editing First

All editing happens directly within the Family Card.

### Navigation Supports Editing

Navigation exists to support research and data entry.

### Preserve Orientation

The currently opened family remains clearly visible through tabs and workspace context.

---

## Future Considerations

Future versions may support:

- Multiple Family Card tabs
- Pinned tabs
- Split views
- Advanced navigation history

These additions must preserve workflow consistency.

---

## Success Criteria

The workflow is successful when:

- An existing family can be opened with a single action.
- The Family Card appears immediately.
- Editing can begin without additional interaction.
- The same Family Card is used for both creation and editing.
