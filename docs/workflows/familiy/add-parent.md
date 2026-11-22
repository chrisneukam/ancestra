# Workflow: Add Parent

## Goal

Add one or more parents to a partner within an existing family.

The workflow must support both:

- Linking an existing person
- Creating a new person

without interrupting research activities.

Parent information extends the genealogy graph into the previous generation.

---

## Starting Point

A Family Card is open.

The family contains at least one partner.

Example:

August Gansler
♥
Ernestine Dührig

The user wants to record the parents of one of the partners.

---

## Family Card Behavior

Parent information is displayed within the visual context of the corresponding partner.

Example:

August Gansler
♥
Ernestine Dührig

Parents of August

[ ]
[ ]

Parents of Ernestine

[ ]
[ ]

Parent fields remain directly available for editing.

No explicit "Add Parent" command is required.

---

## User Flow

1. The user starts typing into one of the available parent fields.

Example:

[ Johann Gansler ]

2. While typing, Ancestra searches for possible existing persons.

Suggestions are displayed immediately.

Example:

Possible Matches

- Johann Gansler (\*1840)
- Johann Gansler (\*1844)

3. Existing persons are never selected automatically.

4. The user chooses one of two actions.

### Link Existing Person

The user explicitly selects a suggested person.

The person becomes a parent of the associated partner.

### Create New Person

The user confirms the entered text without selecting a suggestion.

A new person is created.

The person becomes a parent of the associated partner.

5. The parent appears immediately within the Family Card.

Example:

Parents of August

Johann Gansler
[ ]

6. Potential duplicate warnings may be displayed.

Example:

Johann Gansler ⚠

Duplicate warnings must never interrupt editing.

---

## Result

The genealogy graph is extended by one additional generation.

The partner now has a parent relationship.

The Family Card remains active.

The user may continue entering information immediately.

---

## Genealogical Considerations

Genealogical research frequently contains incomplete information.

The workflow must support:

- One known parent
- Two known parents
- Unknown parents
- Parents discovered later
- Uncertain parent information

The workflow must not require a complete parental structure.

Research may continue with partial information.

---

## UX Goals

- Immediate data entry
- No modal dialogs
- No wizard screens
- No context switching
- Support incomplete genealogy information
- Consistent behavior across generations

---

## UX Principles Applied

### Always Ready For Input

Parent fields remain directly available.

### Inline Editing First

Parents are entered directly within the Family Card.

### Facts First

Research information remains the primary focus.

### Minimize Context Switching

The user never leaves the current Family Card.

### Person And Family Perspectives

Family-centered editing extends person-centered genealogy data.

### Navigation Supports Editing

The workflow extends genealogy context without forcing navigation changes.

---

## Relationship To Family Card Layout

The Family Card is organized around partners.

Parents provide genealogy context for the partners.

See:

design-notes/family-card-layout.md

Parent information must remain visually associated with the partner to whom the relationship belongs.

---

## Future Considerations

Future versions may support:

- Biological parent relationships
- Adoptive parent relationships
- Foster parent relationships
- Guardian relationships
- Relationship confidence indicators

These features must preserve the direct inline editing experience.

---

## Success Criteria

The workflow is successful when:

- A parent can be added without opening a dialog.
- Existing persons can be linked directly.
- New persons can be created directly.
- Duplicate warnings never interrupt editing.
- The Family Card remains active.
- Parent information remains visually connected to the associated partner.
- Parent entry behaves consistently with partner and child entry workflows.
