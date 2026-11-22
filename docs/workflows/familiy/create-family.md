# Workflow: Create Family

## Goal

Create a new family within the currently opened genealogy project.

A family represents a genealogy relationship context.

Family creation must not require complete genealogy information.

The user should be able to start with whatever information is currently known.

---

## Starting Point

A genealogy project is open.

The user may currently be:

- on the project start page
- in the navigator
- working in another tab
- viewing a person
- viewing a family

---

## Entry Points

The user may create a family from multiple locations.

### Project Start Page

Example:

- Create Person
- Create Family
- Create Source
- Import Media

### Navigator

The navigator provides direct access to family creation.

Example:

Families

-

### Contextual Workflows

Future workflows may allow family creation from:

- Person View
- Relationship Editor
- Search Results
- Duplicate Resolution Views

---

## User Flow

1. User selects "Create Family".

2. Ancestra opens a new tab.

Example:

[ New Family ]

3. The Family Card becomes the active view.

4. The Family Card is initially empty.

Example:

Parents

[ Add Person ]
[ Add Person ]

Children

[ Add Child ]

Events

Notes

5. The user begins entering available genealogy information.

No creation wizard is shown.

No modal dialog is shown.

No edit mode must be activated.

All editing occurs directly within the Family Card.

6. The tab indicates unsaved changes.

Example:

[ ● New Family ]

7. The user continues research and enters information as it becomes available.

---

## Result

A new family exists within the genealogy graph.

The family may be:

- fully documented
- partially documented
- incomplete

The genealogy graph grows incrementally as research progresses.

---

## Genealogical Considerations

Genealogical research is often incomplete.

Examples:

- Parents known, children unknown
- Children known, parents unknown
- One parent known, one parent unknown
- Family event known, persons unknown

The workflow must support all of these situations.

A family must not require predefined parent roles before editing can begin.

---

## UX Goals

- Immediate data entry
- No creation wizard
- No modal dialog
- Fast workflow
- Consistent editing experience
- Support incomplete genealogy research

---

## UX Principles Applied

### Create Equals Open Empty

Creating a family immediately opens an empty Family Card.

### Inline Editing First

All information is entered directly into the Family Card.

### Workspace Instead Of Database Application

Users work within a genealogy workspace rather than managing records.

### Person And Family Perspectives

The workflow supports family-first research without limiting future person-based workflows.

---

## Future Considerations

Future versions may support:

- Family templates
- Relationship presets
- Duplicate suggestions
- Research assistants

These features must not interrupt the primary editing workflow.

---

## Success Criteria

The workflow is successful when:

- A family can be created within seconds.
- No separate creation screen exists.
- The user immediately enters data.
- The same Family Card is used for creation and editing.
