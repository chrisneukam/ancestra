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

# Research Perspectives

## Identity, Context And Evidence

Ancestra separates genealogy information into three distinct concepts.

Person = Identity

Family = Context

Research Assets = Evidence

### Identity

Persons represent the identities that exist within the genealogy graph.

Genealogy facts ultimately belong to persons.

Examples:

- Names
- Birth Facts
- Death Facts
- Occupations
- Relationships

### Context

Families provide research context.

Researchers often investigate persons through family relationships.

Family Cards therefore act as primary research workspaces.

Examples:

- Partnerships
- Parents
- Children
- Household Context
- Shared Research Activities

### Evidence

Research Assets represent evidence that supports genealogy facts.

Evidence may belong to a person or a family depending on its genealogical meaning.

Examples:

Person Evidence

- Birth Certificate
- Death Certificate
- Portrait Photograph
- Military Record

Family Evidence

- Marriage Certificate
- Family Photograph
- Census Household Record
- Divorce Record

Ancestra does not force researchers into a single organizational model.

Research Assets should be attached where researchers naturally expect them.

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

## Always Ready For Input

Frequently used data-entry areas should remain permanently ready for additional input.

Users should not be forced to repeatedly activate creation commands before entering information.

Examples:

Children

Anna Schmidt
Karl Schmidt

[ ]

Alternative Names

Anna Müller

[ ]

Sources

Church Record 1925

[ ]

Whenever an entry is completed, Ancestra should automatically provide the next empty input area.

This principle minimizes unnecessary clicks and supports continuous research workflows.

The interface should encourage data entry rather than requiring users to repeatedly request permission to enter more information.

This principle is especially important for:

- Children
- Parents
- Events
- Sources
- Notes
- Media
- Alternative Names

The application should remain ready for the next piece of information at all times.

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

## The Inspector Provides Context

The Inspector is a read-only contextual view.

Its purpose is to provide understanding, orientation and navigation within the current research context.

Primary editing must always occur within the active workspace view.

The Inspector may display:

- Metadata
- Research Status
- Duplicate Warnings
- Relationship Information
- Linked Objects
- Summary Information

The Inspector may provide navigation and action commands.

Examples:

- Open Person
- Open Source
- Open Media
- Open Duplicate Candidate

The Inspector must not become a secondary editing surface.

Users should never be required to determine whether information must be edited in the workspace or in the inspector.

The relationship is:

Workspace = Edit

Inspector = Inspect

This separation reduces cognitive load and creates a consistent editing experience throughout the application.

---

## Single Focus Principle

Ancestra maintains exactly one active focus at a time.

The active workspace tab owns the current focus.

All surrounding UI elements react to this focus.

This prevents conflicting contexts and ensures predictable navigation behavior.

### Focus Ownership

Workspace owns focus.

Navigator reflects focus.

Inspector reflects focus.

### Implications

Selecting an object in the navigator changes the active workspace.

Switching workspace tabs updates both navigator and inspector.

The navigator never maintains an independent selection state.

The inspector never maintains an independent selection state.

There is always a single source of truth for the current context.

---

## Exploration Before Commitment

Genealogical research is exploratory by nature.

Users frequently move between persons, families, sources, places, and media while investigating relationships and evidence.

Navigation should therefore remain lightweight.

Editing represents commitment.

### Principle

Navigation opens temporary workspace tabs.

Editing creates persistent workspace tabs.

### Goal

Users can freely explore the genealogy graph without creating excessive numbers of open tabs.

Research remains fluid while preserving important work.

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

## Navigator Represents The Genealogy Graph

The Navigator exists to traverse genealogy relationships.

Its purpose is to help researchers move through identities and contexts.

The Navigator should primarily expose:

- Persons
- Families
- Relationships

The Navigator should not become a general-purpose data browser.

Supporting research objects such as:

- Sources
- Media
- Notes

should remain accessible through their research context, search results or inspector views rather than through dedicated navigator hierarchies.

Researchers navigate the graph.

They do not navigate the database.

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

## Primary And Supporting Objects

Not every genealogy object is a workspace object.

Ancestra distinguishes between primary workspace objects and supporting research objects.

Primary Workspace Objects

- Persons
- Families

Supporting Research Objects

- Sources
- Media
- Notes

Primary workspace objects own research focus.

Supporting research objects provide evidence and context.

Supporting objects should be edited within the workflow that uses them whenever possible.

The application should avoid promoting supporting objects to first-class workspace entities unless a clear research benefit exists.

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
