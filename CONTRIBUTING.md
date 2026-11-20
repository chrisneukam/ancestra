# Contributing to Ancestra

First of all, thank you for your interest in contributing to Ancestra.

The project is currently in an early design and development phase. Contributions, ideas, discussions, and constructive feedback are highly appreciated.

---

## Project Goals

Ancestra aims to become a modern, maintainable, and user-friendly genealogy desktop application built on a robust architecture and sound data modeling principles.

Key priorities are:

- Correct genealogical data modeling
- Excellent usability
- Long-term maintainability
- Clean architecture
- High performance
- Local-first data ownership

---

## Development Principles

When contributing, please keep the following principles in mind:

### Data Integrity First

Genealogical correctness is more important than convenience.

The database must remain internally consistent, and every architectural change should preserve data integrity.

### Simplicity Over Complexity

Prefer simple and understandable solutions whenever possible.

Avoid introducing unnecessary dependencies or abstractions.

### User Experience Matters

A primary goal of Ancestra is fast and efficient data entry.

Features should support researchers rather than create additional complexity.

### Documentation Is Part of the Code

Architectural decisions and domain rules should always be documented alongside implementation changes.

---

## Reporting Issues

When creating an issue, please provide:

- Clear description
- Expected behavior
- Actual behavior
- Screenshots if applicable
- Steps to reproduce

For feature requests, please explain:

- The genealogical use case
- The expected workflow
- Potential benefits

---

## Pull Requests

Please follow these guidelines:

1. Create a dedicated branch.
2. Keep changes focused and small.
3. Write clear commit messages.
4. Update documentation if required.
5. Ensure the project builds successfully.
6. Open a Pull Request for review.

---

## Coding Standards

### Rust

- Follow standard Rust formatting.
- Use `cargo fmt`.
- Use `cargo clippy`.
- Favor explicit and readable code.

### TypeScript

- Use strict typing whenever possible.
- Avoid `any`.
- Keep components small and maintainable.

### SQL

- Keep schema definitions explicit.
- Document non-obvious constraints.
- Preserve backward compatibility whenever possible.

---

## Architecture Decisions

Important architectural decisions are documented in:

- architecture-decisions.md

Before introducing major changes, please check existing ADRs (Architecture Decision Records).

---

## Code of Conduct

Be respectful.

Constructive criticism is welcome.

Personal attacks, harassment, discrimination, or toxic behavior will not be tolerated.

---

Thank you for helping build Ancestra.
