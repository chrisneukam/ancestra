# Workflow: Attach Media

## Goal

Attach a media file to the currently edited genealogy entity.

Media supports genealogy research by providing direct access to source documents, photographs and other evidence.

Media may be attached to:

- Person
- Family
- Event
- Source

The workflow must make it clear which entity receives the media attachment.

---

## Starting Point

The user is currently editing a genealogy entity.

Examples:

- Person View
- Family Card
- Event View
- Source View

The edited entity is visible within the active workspace tab.

---

## Workspace Principle

Media is attached to the entity currently being edited.

The editing view determines the target entity.

Examples:

Person View
→ media belongs to the person

Family Card
→ media belongs to the family

Event View
→ media belongs to the event

Source View
→ media belongs to the source

The Inspector never edits media.

The Inspector may display media information and provide navigation commands.

---

## View Behavior

Entities that support media attachments provide a dedicated Media section.

Example:

Media

BirthCertificate.pdf

[ Drop file here or browse... ]

The media area remains ready for additional input.

---

## User Flow

### Drag & Drop

1. The user drags a file into the media area.

Examples:

- PDF
- JPG
- JPEG
- PNG
- TIFF

2. Ancestra imports the file into the project media structure.

3. A media record is created.

4. The media is linked to the currently edited entity.

5. The media immediately appears within the Media section.

---

### File Selection

1. The user activates the media input area.

2. A file selection dialog opens.

3. The user selects a file.

4. Ancestra imports the file.

5. A media record is created.

6. The media is linked to the currently edited entity.

---

## Result

The file is now:

- stored inside the project
- represented by a media record
- linked to the active entity

The user remains within the current workspace view.

---

## Family Card Considerations

The Family Card contains multiple genealogy entities.

Examples:

- Family
- Partner A
- Partner B
- Children

Media attached within the Family Card belongs to the Family entity itself.

Media belonging to a specific person must be managed through that person's dedicated Person View.

The Family Card should not contain separate media editors for every displayed person.

---

## Inspector Behavior

The Inspector may display:

- media counts
- linked media
- media summaries
- media metadata

The Inspector may provide commands such as:

- Open Media
- Open Linked Person

The Inspector must not become a media editing surface.

---

## UX Goals

- Clear ownership of media
- Immediate attachment workflow
- Minimal interaction cost
- No attachment wizard
- No ambiguity regarding target entity
- Preserve editing context

---

## UX Principles Applied

### Workspace = Edit

Media is attached within the active editing view.

### Inspector = Inspect

The Inspector provides information but does not manage media.

### Always Ready For Input

Media areas remain ready for new attachments.

### Inline Editing First

Media attachment happens directly within the active workspace.

### Minimize Context Switching

The user remains focused on the active research object.

---

## Future Considerations

Future versions may support:

- Bulk import
- Folder import
- OCR processing
- Metadata extraction
- Media tagging

These features must preserve clarity regarding media ownership.

---

## Success Criteria

The workflow is successful when:

- Users always understand which entity receives the media.
- Media can be attached with minimal effort.
- The current editing context remains active.
- The Family Card remains visually focused.
- The Inspector remains a contextual information panel.
