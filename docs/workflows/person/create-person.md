# Workflow: Create Person

## Goal

Create a new person within the currently opened genealogy project.

A person is the central business entity of the genealogy graph.

Users may begin their research with a person or with a family.

Both workflows are equally supported.

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

The user may create a person from multiple locations.

### Project Start Page

Example:

- Create Person
- Create Family
- Create Source
- Import Media

### Navigator

The navigator provides direct access to person creation.

Example:

Persons

-

### Contextual Workflows

Future workflows may allow person creation from:

- Family Card
- Explorer
- Search Results
- Duplicate Resolution Views

---

## User Flow

1. User selects "Create Person".

2. Ancestra opens a new tab.

Example:

[ New Person ]

3. The Person Card becomes the active workspace view.

4. The Person Card is initially empty.

Example:

- Names
- Personal Facts
- Life Events
- Research Assets

5. The cursor is automatically placed into the first editable field.

6. The user immediately begins entering known information.

No creation wizard is shown.

No modal dialog is shown.

No edit mode must be activated.

All editing occurs directly within the Person Card.

7. The tab indicates unsaved changes.

Example:

[ ● New Person ]

8. The user continues editing as research progresses.

---

## Result

A new person exists within the genealogy graph.

The person may contain:

- complete information
- partial information
- minimal information

Relationships may be added later.

No family is automatically created.

No root person is automatically assigned.

---

## Genealogical Considerations

Genealogical research is often incomplete.

Examples:

- Unknown parent
- Unknown spouse
- Unknown birth date
- Unknown death date

Ancestra must support these situations naturally.

Persons may therefore be created with incomplete facts.

Known genealogy context should be added whenever available.

---

## UX Goals

- Immediate data entry
- No creation wizard
- No modal dialog
- Fast keyboard-oriented workflow
- Preserve research flow
- Support incomplete genealogy information

---

## UX Principles Applied

### Create Equals Open Empty

Creating a person immediately opens an empty Person Card.

### Inline Editing First

All editing occurs directly within the Person Card.

### Facts First

Users immediately work with genealogy information.

#### Person = Identity

The Person Card focuses on information that belongs directly to the person.

Relationship navigation is provided by the Explorer.

Research context is primarily provided by Family Cards.

### Minimize Context Switching

Creation and editing occur within the same workspace.

---

## Success Criteria

The workflow is successful when:

- A person can be created within seconds.
- No separate creation screen exists.
- The user immediately starts entering data.
- The same Person Card is used for creation and editing.
