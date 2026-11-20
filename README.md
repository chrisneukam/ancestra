# Ancestra

> A modern desktop application for genealogy research and family history management.

## Vision

Ancestra is a modern genealogy application that combines traditional family history research with a fast, intuitive, and user-friendly desktop experience.

The project focuses on:

- Efficient data entry
- Consistent genealogical data management
- High usability
- Local-first data ownership
- Long-term maintainability
- Future GEDCOM compatibility

Unlike cloud-based services, Ancestra is designed to give researchers complete control over their data through a native desktop application and a local SQLite database.

---

## Project Status

🚧 Early Development (Version 1)

The project is currently focused on:

- Domain modeling
- Database schema design
- System architecture
- UI/UX concepts
- Technical foundations

Not yet implemented:

- User interface
- Database access layer
- Family card generation
- GEDCOM import/export

---

## Core Principles

### Single Source of Truth

The SQLite database is the only source of truth.

Generated artifacts such as family cards, reports, exports, and print views are never stored permanently and can always be recreated from the underlying data.

### One Real Person = One Record

Every real person should exist exactly once within a project.

The application will support duplicate detection and assist users in identifying potential duplicate records.

### Incomplete Data Is Normal

Genealogical research is often incomplete.

Ancestra is designed to handle:

- Unknown parents
- Missing dates
- Missing locations
- Unverified assumptions
- Partial family structures

without preventing data entry.

---

## Technology Stack

### Frontend

- TypeScript
- HTML5
- CSS3
- Vite

### Backend

- Rust
- Tauri v2
- rusqlite

### Database

- SQLite

### Development Environment

- Windows 11
- Visual Studio Code

---

## Architecture Overview

Ancestra follows a two-process architecture:

```text
┌───────────────────────────┐
│ Frontend (TypeScript UI)  │
│ WebView2 Sandbox          │
└─────────────┬─────────────┘
              │ IPC
              ▼
┌───────────────────────────┐
│ Backend (Rust Core)       │
│ Business Logic            │
│ SQLite Access             │
└─────────────┬─────────────┘
              │
              ▼
┌───────────────────────────┐
│ SQLite Database           │
└───────────────────────────┘
```

Communication between frontend and backend is exclusively handled through Tauri IPC commands.

---

## Planned Features

### Person Management

- Person records
- Alternative names
- Research status tracking
- Kekulé numbering

### Family Management

- Families
- Parent-child relationships
- Partnerships
- Complex family structures

### Events

- Birth
- Baptism
- Marriage
- Divorce
- Death
- Burial
- Custom event types

### Sources

- Church records
- Civil records
- Archive documents
- Publications
- Source citations

### Media

- Documents
- Photos
- Certificates
- Scanned records

### Reporting

- Family cards
- Research reports
- Print-friendly views

### Data Exchange

- GEDCOM import
- GEDCOM export

---

## Repository Structure

```text
ancestra/
│
├── docs/
│   ├── domain-model.md
│   ├── architecture.md
│   ├── architecture-decisions.md
│   └── schema.sql
│
├── src/
├── src-tauri/
├── assets/
├── tests/
│
├── README.md
├── CONTRIBUTING.md
├── CHANGELOG.md
└── LICENSE
```

---

## Documentation

Project documentation is located in the `/docs` directory.

Important documents:

- domain-model.md
- architecture.md
- architecture-decisions.md
- schema.sql

---

## Long-Term Goals

- Comprehensive genealogy data management
- Modern and responsive desktop UI
- Excellent performance with large family trees
- GEDCOM interoperability
- Extensible architecture
- Long-term maintainability

---

## License

License selection is pending.

---

## Author

Christian Neukam

Project: Ancestra
