# Workflow: Create Project

## Goal

Create a new genealogy project.

A project represents the primary entry point into Ancestra.

Users work with projects rather than database files.

---

## Starting Point

The user is on the Ancestra start screen.

No project is currently open.

---

## User Flow

1. User selects "Create Project".

2. Ancestra displays the project creation dialog.

3. User enters:
   - Project Name
   - Project Location

4. User confirms project creation.

5. Ancestra creates the project structure.

Example:

MyFamily/

├── MyFamily.ancestra
├── database/
├── media/
├── exports/
└── backups/

6. Ancestra automatically opens the newly created project.

7. The project workspace is opened.

The resulting workspace state is identical to the
Open Project workflow.

See:

open-project.md

---

## Result

A new genealogy project exists.

The project is opened.

No genealogy data is created automatically.

No root person is assigned automatically.

No family is created automatically.

---

## UX Goals

- Minimal user input
- No multi-step wizard
- Fast project creation
- Immediate transition into the workspace
- Separation of project management and genealogy data

---

## UX Principles Applied

### Workspace Instead Of Database Application

The user creates a genealogy project rather than a database.

### Minimize Context Switching

Project creation should require a minimal number of steps.

### Modern Desktop Experience

Project creation should feel comparable to modern desktop applications rather than legacy setup wizards.

---

## Future Considerations

Future versions may support:

- Project templates
- Recent project locations
- Sample projects
- Optional cloud synchronization

These features must not increase complexity for the standard workflow.
