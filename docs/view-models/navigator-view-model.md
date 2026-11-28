# Navigator ViewModel

## Purpose

The Navigator ViewModel provides graph traversal.

The Navigator reflects workspace focus.

The Navigator never owns focus.

---

# Properties

FocusObjectType

FocusObjectId

RelatedPersons

RelatedFamilies

---

# Commands

OpenPerson

OpenFamily

---

# Responsibilities

Display local graph context.

Display connected persons.

Display connected families.

Support graph traversal.

---

# Invariants

Navigator never owns focus.

Navigator never owns independent selection state.

Workspace remains authoritative.
