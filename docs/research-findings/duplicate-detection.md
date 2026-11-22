# Duplicate Detection

## Purpose

Duplicate prevention is a core quality objective of Ancestra.

The genealogy graph should represent each real person exactly once.

However, genealogy research is often incomplete and uncertain.

Ancestra must therefore assist researchers in identifying possible duplicates without interrupting research workflows.

---

## Core Principle

Duplicate detection is advisory, never blocking.

Ancestra may identify potential duplicates.

Ancestra must never force a resolution during data entry.

The final decision always belongs to the researcher.

---

## Workflow Philosophy

Data entry has higher priority than duplicate resolution.

The following workflow is considered acceptable:

1. User enters information.
2. A new person is created.
3. Ancestra detects a potential duplicate.
4. A warning is generated.
5. Research continues uninterrupted.
6. The warning may be reviewed later.

Research workflows must not be blocked by duplicate detection.

---

## Warning Persistence

Duplicate warnings are not transient UI states.

Duplicate warnings are research findings.

Warnings must therefore:

- survive tab changes
- survive view changes
- survive application restarts
- survive project reloads

A duplicate warning remains active until:

- the researcher resolves it
- the researcher explicitly dismisses it
- the genealogy engine no longer detects the issue

---

## Architecture Responsibilities

### Genealogy Engine

The Genealogy Engine is responsible for:

- duplicate analysis
- similarity evaluation
- duplicate candidate generation

Duplicate detection is business logic.

Duplicate detection does not belong to the user interface.

---

### User Interface

The user interface is responsible for:

- displaying duplicate warnings
- presenting duplicate candidates
- providing resolution actions

The user interface does not determine whether a duplicate exists.

---

## User Experience Requirements

Duplicate detection must never interrupt:

- person creation
- family creation
- child entry
- parent entry
- source entry
- media entry

No modal dialog may be shown solely because a possible duplicate was detected.

---

## Warning Display

Warnings should be visible directly within the active workspace.

Example:

Walter Müller ⚠

Warnings should remain compact and non-intrusive.

Warnings should not dominate the editing experience.

---

## Inspector Integration

Selecting a duplicate warning should display additional information within the Inspector.

Example:

Possible Duplicate

Potential Match:

- Walter Müller (\*1901)

Available Actions:

- Open Person
- Keep Separate
- Resolve Later

The Inspector becomes the primary location for duplicate review and resolution.

---

## Project Health Integration

Duplicate warnings may contribute to overall project quality assessment.

Examples:

Project Health

- Possible Duplicates: 3
- Missing Sources: 12
- Incomplete Relationships: 5

Project Health should provide visibility without disrupting ongoing research.

---

## Future Considerations

Future versions may introduce:

- fuzzy matching
- phonetic matching
- advanced similarity scoring
- duplicate review dashboards
- merge assistance

These capabilities must preserve the core principle:

Duplicate detection assists the researcher.

Duplicate detection never controls the researcher.

---

## Guiding Principle

The purpose of duplicate detection is to improve research quality.

The purpose of duplicate detection is not to interrupt research.
