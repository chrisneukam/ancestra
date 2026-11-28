# Inspector ViewModel

## Purpose

The Inspector ViewModel provides contextual information about the active workspace object.

Inspector reflects focus.

---

# Properties

FocusObjectType

FocusObjectId

Metadata

ResearchHealth

ResearchAssets

RelatedObjects

---

# Commands

OpenPerson

OpenFamily

---

# Responsibilities

Provide contextual information.

Provide orientation.

Provide navigation shortcuts.

---

# Invariants

Inspector never owns focus.

Inspector is not a primary editing surface.

---

# Focus Relationship

The InspectorViewModel does not define application focus.

It derives its content from the focused workspace object provided by the active workspace tab.
