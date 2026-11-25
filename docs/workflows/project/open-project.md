# Workflow: Open Project

## Goal

Open an existing genealogy project and enter the Ancestra workspace.

Opening a project should immediately provide access to research activities without requiring additional navigation steps.

---

## Starting Point

No project is currently open.

The user may have arrived from:

- Application startup
- Project start page
- Recently opened projects
- File association
- Open Project command

---

## Entry Points

### Start Page

Users may open a project from the list of recently used projects.

### Open Project Command

Users may explicitly select a project file.

Example:

MyFamily.ancestra

### Future Entry Points

Future versions may support:

- Command Palette
- Pinned Projects
- Project Favorites

---

## User Flow

1. User selects an existing project.

2. Ancestra loads:
   - Project Configuration
   - Genealogy Database
   - Media References
   - Application Workspace State

3. Ancestra opens the Workspace Layout.

4. The workspace is displayed immediately.

No genealogy object is automatically opened.

No person is automatically selected.

No family is automatically selected.

5. The user is presented with the Project Start Page.

---

## Workspace Layout

The Workspace Layout consists of:

### Menu Bar

Global application commands.

Examples:

- File
- Edit
- View
- Navigate
- Tools
- Help

### Navigator

Displayed on the left side.

Provides access through Navigator Tools.

Examples:

- Explorer
- Search
- Duplicate Review

Additional tools may be added in future versions.

The Navigator is visible but does not automatically select an object.

### Workspace

Displayed in the center.

The Project Start Page is shown.

### Inspector

Displayed on the right side.

The Inspector presents project-related information.

Example:

- Project Name
- Preferred Root Person
- Person Count
- Family Count
- Source Count
- Media Count

The Inspector always provides context and is never intentionally empty.

### Tabs

No tabs are opened automatically.

Ancestra displays tabs only when actual content has been opened.

Examples:

- Person View
- Family Card
- Media Viewer
- Family Tree
- Fan Chart

---

## Project Start Page

The Project Start Page serves as the default entry point into the project.

Example sections:

### Quick Actions

- Create Person
- Create Family
- Create Source
- Import Media

### Recent Activity

Examples:

- Recently edited persons
- Recently edited families
- Recently viewed sources

### Project Information

Examples:

- Project Name
- Root Person Status
- Research Statistics

The Project Start Page provides orientation and immediate access to common workflows.

---

## Result

The project is opened successfully.

The user enters a consistent workspace environment.

The application is immediately ready for research activities.

---

## Relationship To Create Project

Opening a project and creating a new project must lead to the same workspace state.

See:

create-project.md

Ancestra follows the principles:

- Create Equals Open Empty
- Consistent Entry And Return Points

The workspace shown after project creation and project opening must remain consistent.

---

## UX Goals

- Immediate access to research
- Fast project loading
- Consistent workspace behavior
- No unnecessary startup dialogs
- Clear project orientation
- Minimal cognitive load

---

## UX Principles Applied

### Workspace Instead Of Database Application

Users enter a genealogy workspace rather than a file management interface.

### Navigation Supports Editing

The workspace supports future research and editing activities.

### Every Workspace Area Has Purpose

All visible panels provide meaningful information.

### Consistent Entry And Return Points

Project creation and project opening share the same destination workspace.

### Preserve Orientation

Users immediately understand:

- which project is open
- where to begin
- which actions are available

---

## Future Considerations

Future versions may support optional workspace restoration.

Example:

Restore previous tabs

Restored content may include:

- Person Views
- Family Cards
- Open Media
- Visualizations

This behavior must remain user configurable.

The default Version 1 behavior is always:

Project Open
→ Project Start Page

---

## Success Criteria

The workflow is successful when:

- A project can be opened with minimal effort.
- The Workspace Layout appears immediately.
- The user understands where to begin.
- No genealogy object is opened unexpectedly.
- All workspace areas provide meaningful context.
- Project creation and project opening lead to the same workspace state.
