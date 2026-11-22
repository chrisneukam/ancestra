# Ancestra

# UX Principles v1.0

## Purpose

This document defines the user experience principles of Ancestra.

Its purpose is to ensure a consistent user experience across all areas of the application and to guide future decisions regarding:

- User Interface Design
- Navigation
- Data Entry
- View Design
- Workflow Design
- Feature Development
- Technical Implementation

Whenever multiple implementation options exist, the solution that best supports these UX principles should be preferred.

---

# UX Vision

Ancestra is not a traditional genealogy program.

Ancestra is a modern genealogy research workspace.

The application combines professional genealogy research with a modern desktop workflow inspired by contemporary tools such as IDEs, digital content creation software, and research applications.

Users focus on genealogy facts and research activities.

The software should stay out of the way.

---

# Core Design Philosophy

## Facts First

Facts are the primary focus of the user interface.

Names, dates, places, relationships, events, sources, notes and media are more important than navigation controls or application chrome.

The interface should visually prioritize genealogy information over controls.

---

## Research Before Administration

Users work on genealogy research.

Users do not manage database records.

The application should expose genealogy concepts rather than technical concepts.

Examples:

Preferred:

- Person
- Family
- Event
- Source
- Family Card

Avoid exposing:

- Database Record
- Entity ID
- Foreign Key
- Relationship Table

Implementation details must remain hidden whenever possible.

---

## Workspace Instead Of Database Application

Ancestra is a workspace.

Users should feel as if they are working within a research environment rather than editing records in a database.

The primary workspace should remain focused on the currently selected genealogy content.

Navigation and supporting tools should remain secondary.

---

## Person And Family Perspectives

Ancestra must support both person-centered and family-centered research workflows.

The Person is the central business entity of the genealogy graph.

Every genealogical fact ultimately belongs to one or more persons.

However, researchers often work within a family context.

A family card provides a natural working environment for entering and reviewing genealogy information.

Therefore:

- Person is the central genealogy entity.
- Family is often the central research and editing context.
- Neither workflow should be preferred over the other.
- Users must be free to start their research with a person or with a family.

Examples:

Person-first workflow:

Person
→ Relationships
→ Family Context

Family-first workflow:

Family
→ Parents
→ Children
→ Additional Persons

Both approaches must lead to the same genealogy graph.

The user interface should support both equally well.

The underlying graph structure must remain invisible to the user whenever possible.

---

# Data Entry Principles

## Inline Editing First

All frequently edited genealogy data should be editable directly within its context.

Users should not be forced into edit dialogs for common operations.

Preferred:

- Direct editing
- Inline editing
- Immediate feedback

Avoid:

- Modal dialogs
- Multi-step edit wizards
- Separate edit windows

Exceptions are allowed when workflows would otherwise become significantly more complex.

---

## Minimize Context Switching

The application should minimize:

- Window changes
- Dialogs
- View changes
- Navigation jumps

Users should be able to enter large amounts of data without repeatedly losing focus.

---

## Fast Keyboard-Oriented Workflow

The application should support efficient keyboard usage.

Common actions should require minimal mouse interaction.

Examples:

- Tab navigation
- Keyboard shortcuts
- Quick search
- Command palette

Power users should be able to work efficiently without relying on complex mouse interactions.

---

## Incomplete Data Must Be Easy To Enter

Genealogical research is often incomplete.

Missing data must never block data entry.

Unknown information should be represented naturally without forcing placeholder values.

---

# Navigation Principles

## Navigation Supports Editing

Navigation exists to support research and data entry.

Navigation must never become the primary focus of the application.

The editor always has priority.

---

## Every Workspace Area Has Purpose

Every visible area of the application should provide meaningful information or actions.

The interface should avoid empty or inactive panels whenever possible.

Examples:

Project Start Page
→ Project actions and project context

Navigator
→ Navigation and exploration

Inspector
→ Context-sensitive information

Person View
→ Research and editing

Family Card
→ Research and editing

Users should always understand why a workspace area is visible and what purpose it currently serves.

---

## Graph Complexity Must Remain Invisible

The genealogy graph is a technical foundation.

Users should navigate through meaningful genealogy concepts.

Examples:

- Parents
- Children
- Partners
- Families

The application should never require users to understand graph structures.

---

## Local Context Navigation

Users should be able to quickly navigate to directly related persons and families.

The navigation area should focus on nearby genealogy context rather than showing the entire project structure at all times.

---

## Preserve Orientation

Users should always understand where they are within their research.

Navigation mechanisms should reduce disorientation.

Examples:

- Tabs
- Navigation history
- Root person indicators
- Family context

---

# Workspace Principles

## The Central Workspace Is The Primary Focus

The largest area of the application should be reserved for the current content.

Examples:

- Family Card Editor
- Person View
- Media Viewer
- Family Tree
- Fan Chart
- Reports

Side panels must never visually dominate the workspace.

---

## Information Opens In Tabs

Research often requires switching between multiple contexts.

The workspace should support opening multiple views simultaneously.

Examples:

- Family Card
- Source Record
- PDF Document
- Image
- Tree Visualization

Tabs should behave similarly to modern development tools.

---

## Create Equals Open Empty

Creating an object and editing an object should use the same workspace view whenever possible.

The application should avoid separate creation screens, creation wizards or dedicated create dialogs.

Instead, creating a new object opens its regular editor in an empty state.

Examples:

Create Person
→ Open empty Person Editor

Create Family
→ Open empty Family Card

Create Event
→ Open empty Event Editor

Create Source
→ Open empty Source Editor

Create Note
→ Open empty Note Editor

This principle supports:

- Inline Editing First
- Reduced UI complexity
- Fewer workflow variants
- Consistent user experience
- Minimal context switching

Users should immediately begin working within the final editing environment.

---

## Consistent Entry And Return Points

Creating an object and opening an existing object should lead to the same workspace state whenever possible.

Examples:

Create Project
→ Project Workspace

Open Project
→ Project Workspace

Create Person
→ Person View

Open Person
→ Person View

Create Family
→ Family Card

Open Family
→ Family Card

Users should not have to learn separate interfaces for creation and editing.

Consistency reduces cognitive load and improves workflow efficiency.

---

## Views Are Temporary

Views are representations of genealogy facts.

Views are not genealogy data.

The application should make it easy to switch between multiple representations of the same underlying information.

---

# Visual Design Principles

## Clarity Over Decoration

Visual clarity is preferred over visual effects.

Decoration should never reduce readability.

---

## Density Without Clutter

Genealogy applications often handle large amounts of information.

The interface should provide high information density while remaining easy to understand.

---

## Modern Desktop Experience

The user experience should feel comparable to modern desktop applications.

The application should avoid outdated interaction patterns commonly found in legacy genealogy software.

---

# Future-Proof Principles

## Features Must Respect The Workspace Philosophy

Future functionality should integrate naturally into the existing workspace concept.

New features should not introduce inconsistent interaction models.

---

## Views May Evolve

New view types may be introduced over time.

Examples:

- Advanced Family Trees
- Fan Charts
- Relationship Analysis
- Research Dashboards

All views should remain consistent with the principle:

Facts are stored. Views are generated.

---

# Guiding Question

Whenever a UX decision is uncertain, ask:

"Does this make genealogy research faster, simpler and more focused?"

If the answer is no, the design should be reconsidered.
