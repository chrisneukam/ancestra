# Workflow: Add Parent

## Goal

Add a parent to an existing family.

The workflow must support both:

- Linking an existing person
- Creating a new person

without interrupting ongoing research.

---

## Starting Point

A Family Card is open.

The user is working within the Parents section.

---

## Family Card Behavior

The Parents section always provides available input areas for parent entry.

Example:

Parents

[ ]
[ ]

No explicit "Add Parent" command is required.

---

## User Flow

1. The user starts typing into an available parent field.

Example:

[ August Gansler ]

2. While typing, Ancestra searches for possible existing persons.

Suggestions are displayed immediately.

Example:

Possible Matches

- August Gansler (\*1870)
- August Gansler (\*1874)

3. Existing persons are never selected automatically.

4. The user chooses one of two actions.

### Link Existing Person

The user explicitly selects a suggested person.

The existing person is linked to the family.

### Create New Person

The user confirms the entered text without selecting a suggestion.

A new person is created.

The new person is automatically linked to the family.

5. The parent immediately appears within the Parents section.

Example:

Parents

August Gansler
[ ]

6. Potential duplicate warnings may be displayed.

Example:

August Gansler ⚠

Duplicate warnings must never interrupt data entry.

---

## Result

The family now contains an additional parent.

The genealogy graph is updated.

The current Family Card remains active.

The user may continue entering information without changing views.

---

## Genealogical Considerations

Research often begins with incomplete parental information.

The workflow must support:

- One known parent
- Two known parents
- Unknown parents
- Parents discovered later during research

No complete parental structure is required.

---

## UX Goals

- Immediate data entry
- No modal dialog
- No context switching
- Support incomplete genealogy information
- Keyboard-oriented workflow
- Consistent behavior with child entry

---

## UX Principles Applied

### Always Ready For Input

Parent entry remains directly available.

### Inline Editing First

Parents are entered directly within the Family Card.

### Facts First

The user remains focused on genealogy information.

### Minimize Context Switching

The Family Card remains the active workspace.

### Person And Family Perspectives

Family-centered editing creates and maintains person-centered genealogy data.

---

## Future Considerations

Future versions may support:

- Parent role definitions
- Biological relationships
- Adoptive relationships
- Relationship validation

These features must preserve the inline editing experience.

---

## Success Criteria

The workflow is successful when:

- A parent can be added without opening a dialog.
- Existing persons can be linked directly.
- New persons can be created directly.
- Duplicate warnings never interrupt editing.
- The user remains within the Family Card.
- Parent entry behaves consistently with child entry.
