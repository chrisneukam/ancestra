# Search ViewModel

## Purpose

The Search ViewModel provides global navigation.

Search = Global Navigation

---

# Properties

Query

Results

SelectedResult

ResultCount

IsSearching

---

# Commands

Search

OpenResult

ClearSearch

---

# Responsibilities

Search across the project.

Present results.

Forward navigation requests to the Workspace.

---

# Result Types

Persons

Families

Sources

Media

Notes

---

# Invariants

Search never owns focus.

Opened objects become workspace focus.
