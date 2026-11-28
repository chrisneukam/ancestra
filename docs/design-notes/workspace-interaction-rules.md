# Workspace Interaction Rules

## Purpose

This document defines the interaction rules that govern all workspace behavior within Ancestra.

These rules are independent of implementation technology.

They exist to ensure consistent behavior across:

- Workspace
- Navigator
- Inspector
- Search
- Person Cards
- Family Cards
- Future Workspace Objects

Whenever an interaction design decision is uncertain, the rules defined here should be preferred.

---

# Rule 1

## Workspace Owns Focus

The Workspace is the single owner of application focus.

No other component may own focus.

The currently active workspace tab determines the active research context.

Examples:

Person Card

↓

Focus = Person

Family Card

↓

Focus = Family

---

# Rule 2

## Navigator Reflects Focus

The Navigator reflects the active workspace focus.

The Navigator never owns focus.

The Navigator never maintains an independent selection.

The Navigator displays graph context around the current workspace object.

Workspace

↓

Focus Changes

↓

Navigator Updates

---

# Rule 3

## Inspector Reflects Focus

The Inspector reflects the active workspace focus.

The Inspector never owns focus.

The Inspector never maintains an independent selection.

Workspace

↓

Focus Changes

↓

Inspector Updates

---

# Rule 4

## Single Source Of Truth

Exactly one object owns focus at any time.

There must never be:

- Multiple active contexts
- Independent Navigator context
- Independent Inspector context

Workspace state is authoritative.

All other UI areas derive their state from the Workspace.

---

# Rule 5

## Navigation Is Exploratory

Users frequently explore the genealogy graph.

Navigation should remain lightweight.

The act of opening an object should not imply commitment.

Examples:

- Open Person
- Open Family
- Open Search Result

Navigation is exploration.

Navigation is not editing.

---

# Rule 6

## Navigation Opens Preview Tabs

Opening an object through navigation creates a Preview Tab.

Examples:

Navigator

↓

Open Person

↓

Preview Tab

Search

↓

Open Family

↓

Preview Tab

Preview Tabs support exploration.

---

# Rule 7

## Only One Preview Tab Exists

Ancestra maintains at most one Preview Tab.

Opening another preview object replaces the current Preview Tab.

Examples:

Preview Person

↓

Open Preview Family

↓

Person Preview Replaced

↓

Family Preview Visible

This prevents tab clutter during exploration.

---

# Rule 8

## Editing Creates Persistence

Editing represents commitment.

Any editing operation promotes a Preview Tab to a Persistent Tab.

Examples:

- Change Person Name
- Add Child
- Add Parent
- Add Research Evidence
- Modify Family Information

Editing protects user work.

---

# Rule 9

## Persistence Does Not Change Focus

Promoting a Preview Tab to a Persistent Tab must not change workspace focus.

The active context remains unchanged.

Only tab persistence changes.

---

# Rule 10

## Active Tab Owns Focus

Changing the active tab changes workspace focus.

Examples:

Activate Person Tab

↓

Person becomes focus

Activate Family Tab

↓

Family becomes focus

Navigator and Inspector must update accordingly.

---

# Rule 11

## Search Is Navigation

Search provides global navigation.

Search never owns focus.

Search results never own focus.

Opening a search result transfers focus to the opened object.

Search

↓

Open Result

↓

Workspace Focus Changes

---

# Rule 12

## Navigator Traverses The Graph

The Navigator exists to traverse genealogy relationships.

The Navigator primarily exposes:

- Persons
- Families
- Relationships

The Navigator should not become a general-purpose data browser.

Researchers navigate the graph.

They do not navigate the database.

---

# Rule 13

## Research Assets Are Contextual

Research Assets support the active research context.

Research Assets may be attached to:

- Persons
- Families

Research Assets do not own focus.

Research Assets do not appear as primary navigation objects.

---

# Rule 14

## Editing Happens In Context

Editing should occur within the active research context whenever possible.

Examples:

Person Card

↓

Edit Person Data

Family Card

↓

Edit Family Data

Research Assets

↓

Add Research Evidence

The user should remain within the current context.

---

# Rule 15

## Inline Editing First

Frequently edited information should be editable directly within its context.

The application should prefer:

- Direct Editing
- Inline Editing
- Immediate Feedback

The application should avoid:

- Modal Dialogs
- Multi-Step Wizards
- Separate Edit Windows

Whenever possible.

---

# Rule 16

## Always Ready For Input

Common data entry areas should remain ready for additional input.

Examples:

Children

Parent A
Parent B

[ ]

Sources

Church Record
Marriage Record

[ ]

Researchers should never need to repeatedly request another input field.

---

# Rule 17

## Minimize Context Switching

The application should minimize:

- Dialogs
- Window Changes
- View Changes
- Navigation Interruptions

Researchers should remain focused on genealogy.

Not on application management.

---

# Rule 18

## Workspace Is The Research Environment

The Workspace represents the primary research environment.

All supporting UI elements exist to support the Workspace.

Priority Order:

1. Workspace
2. Navigator
3. Inspector

Research always takes precedence over navigation.

Navigation always takes precedence over supporting information.

---

# Stability Requirement

Future features must respect these interaction rules.

New functionality should integrate into the existing Workspace model instead of introducing competing interaction patterns.

The interaction model should remain predictable, consistent and focused on genealogy research.
