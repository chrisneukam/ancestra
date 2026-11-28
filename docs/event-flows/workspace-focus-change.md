# Workspace Focus Change

## Purpose

Defines what happens when workspace focus changes.

---

# Trigger

Any operation that activates another workspace object.

Examples:

- Open Person
- Open Family
- Activate Tab

---

# Flow

Active Workspace Object changes

↓

Workspace Focus changes

↓

Navigator State updates

↓

Inspector State updates

↓

UI Context updates

---

# Invariant

Workspace owns focus.

Navigator reflects focus.

Inspector reflects focus.
