# Inspector Concept

## Purpose

The Inspector provides contextual information for the currently active workspace object.

Its purpose is to help users understand the current research context without duplicating the primary editing experience.

The Inspector is not the primary editing surface.

The Inspector answers the question:

> What additional context should I know about this object?

---

# Core Principles

The Inspector provides context, not evaluation.

The Inspector does not replace the workspace.

The Inspector does not duplicate the primary information shown within the active workspace object.

The Inspector supports understanding, orientation, and workflow guidance.

```text
Workspace owns focus.
Navigator reflects focus.
Inspector reflects focus.
```

The Inspector always reflects the currently active workspace tab.

The Inspector never maintains an independent focus state.

---

# Inspector Responsibility

The workspace is responsible for displaying and editing domain data.

The Inspector is responsible for displaying contextual information that complements the active workspace.

Information shown in the Inspector should not duplicate the primary editing experience.

The Inspector exists to help users understand the current research context and navigate related information.

---

# Shared Layout Structure

All Inspectors share a common structure.

This creates a consistent user experience across all object types and reduces cognitive load.

```text
Research Assets
────────────────

General Context
────────────────

Object Context
────────────────

Actions
────────────────
```

Object-specific information may vary, but the overall structure remains consistent.

Users should always know where information of a particular category is located.

---

# Research Assets

The Research Assets section provides an overview of currently connected research information.

Examples include:

- Sources
- Media
- Notes
- Events
- Families
- Citations

Research Assets describe the current research footprint of an object.

Counts are descriptive, not prescriptive.

The purpose is to inform researchers about currently connected information.

The Inspector never evaluates the completeness or quality of genealogical research.

Incomplete data is normal.

Examples:

```text
Research Assets

Sources: 12
Media: 4
Notes: 8
Events: 17
Families: 2
```

The meaning of individual counts may vary depending on the active object type.

---

# General Context

General Context contains information that is meaningful across multiple object types.

Examples:

- Research Status
- Tags
- Identifiers
- Created Date
- Modified Date

This section should remain largely consistent across Inspectors.

Users should be able to expect common contextual information in the same location regardless of the active object type.

---

# Object Context

Object Context contains information specific to the currently active object type.

Examples:

Person:

- Family Count
- Partner Count
- Child Count

Family:

- Partner Count
- Child Count
- Event Count

Source:

- Referenced Persons
- Referenced Families
- Referenced Events

Place:

- Related Events
- Referenced Persons
- Referenced Families

The contents of this section vary depending on the active workspace object.

---

# Actions

Actions provide quick access to common workflows related to the active object.

Actions do not replace editing functionality.

Examples:

- Add Parent
- Add Child
- Add Partner
- Attach Media
- Attach Source
- Open Related Family

Actions may launch workflows or open additional workspace objects.

Primary editing remains within the workspace.

---

# Inspector Behavior

The Inspector always follows the active workspace tab.

When the active workspace changes:

- the Inspector updates
- the Navigator updates
- the current context changes

The Inspector never drives application focus.

The workspace remains the single source of truth for the current context.

---

# Design Goals

The Inspector should:

- provide meaningful context
- reduce navigation effort
- support genealogy research workflows
- remain visually compact
- avoid redundancy
- remain consistent across object types

The Inspector should not:

- become a secondary editor
- duplicate workspace information
- maintain its own selection state
- evaluate research quality
- encourage completion-oriented workflows

Ancestra supports genealogy research.

It does not judge research completeness.

---

# Future Extensions

The Inspector architecture should support future extensions without changing the underlying structure.

Potential future additions may include:

- Research Tasks
- Duplicate Suggestions
- Change History
- Relationship Insights
- Research Recommendations

Future additions should respect the existing Inspector model and fit within the shared layout structure.
