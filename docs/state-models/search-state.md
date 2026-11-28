# Search State

## Purpose

Defines the state required by global search.

Search provides global navigation.

Search = Global Navigation

---

# Search State

Search

- Query
- Results
- ResultCount
- SelectedResult

---

# Result Types

Examples:

- Persons
- Families
- Sources
- Media
- Notes

---

# Behavior

User enters query

↓

Results update

↓

User opens result

↓

Workspace changes focus

↓

Navigator updates

↓

Inspector updates

---

# Restrictions

Search never owns focus.

Search results never become focus.

Opened objects become focus.
