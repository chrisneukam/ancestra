# Search Navigation

## Purpose

Defines navigation originating from search results.

---

# Flow

User enters search query

↓

Search returns results

↓

User opens result

↓

Workspace opens object

↓

Workspace Focus changes

↓

Navigator updates

↓

Inspector updates

---

# Invariant

Search never owns focus.

Opened objects own focus.
