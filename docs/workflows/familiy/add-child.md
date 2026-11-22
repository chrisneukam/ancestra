# Workflow: Add Child

## Goal

Add a child to an existing family.

The workflow must support both:

- Linking an existing person
- Creating a new person

without interrupting the user's research flow.

---

## Starting Point

A Family Card is open.

The user is working within the Children section.

---

## Family Card Behavior

The Children section always provides an empty input row at the end of the list.

Example:

Children

Anna Schmidt
Karl Schmidt

[ ]

The Family Card always remains ready for additional data entry.

No explicit "Add Child" command is required.

---

## User Flow

1. The user starts typing into the empty child row.

Example:

[ Walter Müller ]

2. While typing, Ancestra searches for possible existing persons.

Suggestions are displayed immediately.

Example:

Walter Müller

Possible Matches:

- Walter Müller (\*1901)
- Walter Müller (\*1937)

3. The user may navigate the suggestions using keyboard or mouse.

Existing persons are never selected automatically.

4. The user chooses one of two actions.

### Link Existing Person

The user explicitly selects a suggested person.

The existing person is linked to the family.

### Create New Person

The user confirms the entered text without selecting a suggestion.

A new person is created.

The new person is automatically linked to the family.

5. The newly linked child immediately appears within the Children section.

Example:

Children

Anna Schmidt
Karl Schmidt
Walter Müller

[ ]

6. A new empty input row is automatically created.

The Family Card remains ready for further data entry.

7. If potential duplicates are detected, Ancestra displays a non-blocking warning.

Example:

Walter Müller ⚠

The warning does not interrupt editing.

The warning may be investigated later.

---

## Result

The family contains an additional child.

The genealogy graph is updated.

The Family Card remains active.

The user may continue entering additional children without interruption.

---

## Genealogical Considerations

Genealogical research is frequently incomplete.

The workflow must support situations such as:

- Child known, parents unknown
- Child known, one parent unknown
- Child known, family partially documented
- Child known before additional research information is available

The workflow must never require complete family information.

---

## UX Goals

- Zero unnecessary clicks
- Immediate data entry
- Continuous workflow
- Duplicate prevention support
- Keyboard-oriented interaction
- No modal dialogs
- No context switching

---

## UX Principles Applied

### Inline Editing First

Children are entered directly within the Family Card.

### Facts First

Focus remains on genealogy information.

### Minimize Context Switching

The user never leaves the Family Card.

### Create Equals Open Empty

Newly created persons immediately become part of the active editing context.

### Navigation Supports Editing

Navigation and duplicate suggestions support data entry without interrupting it.

---

## Future Considerations

Future versions may support:

- Multiple row editing
- Paste multiple children
- Bulk import
- Advanced duplicate detection
- Duplicate review workflows

These features must preserve the continuous inline editing experience.

---

## Success Criteria

The workflow is successful when:

- A child can be entered without opening a dialog.
- Existing persons can be linked directly.
- New persons can be created directly.
- Duplicate warnings never block data entry.
- The user never leaves the Family Card.
- The Family Card is always ready for the next child entry.
