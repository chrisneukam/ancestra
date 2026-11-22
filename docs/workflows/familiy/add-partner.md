# Workflow: Add Partner

## Goal

Add a partner to an existing family.

The workflow must support both:

- Linking an existing person
- Creating a new person

without interrupting the user's research flow.

Partners form the center of the Family Card and define the genealogy context represented by the family.

---

## Starting Point

A Family Card is open.

The family may currently contain:

- no partners
- one partner
- multiple partners

depending on the current state of research.

---

## Family Card Behavior

The partner area is always visible.

Available partner slots should remain ready for data entry.

Examples:

Empty Family

[ ]
♥
[ ]

Partially Completed Family

August Gansler
♥
[ ]

The user does not need to explicitly activate partner creation.

---

## User Flow

1. The user starts typing into an available partner field.

Example:

[ Ernestine Dührig ]

2. While typing, Ancestra searches for possible existing persons.

Suggestions are displayed immediately.

Example:

Possible Matches

- Ernestine Dührig (\*1875)
- Ernestine Dührig (\*1878)

3. Existing persons are never selected automatically.

4. The user chooses one of two actions.

### Link Existing Person

The user explicitly selects a suggested person.

The selected person becomes a partner within the current family.

### Create New Person

The user confirms the entered text without selecting a suggestion.

A new person is created.

The new person becomes a partner within the current family.

5. The partner area updates immediately.

Example:

August Gansler
♥
Ernestine Dührig

6. Potential duplicate warnings may be displayed.

Example:

Ernestine Dührig ⚠

Duplicate warnings never interrupt data entry.

---

## Result

The family now contains an additional partner.

The genealogy graph is updated.

The Family Card remains active.

The user may continue entering family information immediately.

---

## Genealogical Considerations

Research frequently begins with incomplete information.

The workflow must support situations such as:

- One known partner
- One unknown partner
- Both partners known
- Partner information discovered later
- Family relationships established before personal details are fully known

The workflow must not require complete data before research can continue.

---

## UX Goals

- Immediate data entry
- No modal dialogs
- No creation wizard
- Minimal interaction cost
- Keyboard-oriented workflow
- Continuous editing experience

---

## UX Principles Applied

### Partners Form The Center Of A Family

The partner area is the primary focus of the Family Card.

### Always Ready For Input

Partner entry remains directly available.

### Inline Editing First

Partners are entered directly within the Family Card.

### Facts First

Research information remains the primary focus.

### Minimize Context Switching

The user never leaves the active Family Card.

### Person And Family Perspectives

Family-centered editing preserves person-centered genealogy data.

---

## Relationship To Family Card Layout

The Family Card is organized around the partner relationship.

See:

design-notes/family-card-layout.md

The partner area defines the family context.

Children, events, sources, media and notes are organized around this central relationship.

---

## Future Considerations

Future versions may support:

- Additional partner roles
- Multiple concurrent relationships
- Extended partnership history
- Advanced relationship visualization

These capabilities must preserve the central role of the partner area.

---

## Success Criteria

The workflow is successful when:

- A partner can be added without opening a dialog.
- Existing persons can be linked directly.
- New persons can be created directly.
- Duplicate warnings never interrupt editing.
- The Family Card remains the active workspace.
- Partner information can be entered with minimal effort.
