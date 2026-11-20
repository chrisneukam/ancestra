PRAGMA foreign_keys = ON;

------------------------------------------------------------
-- PERSON
------------------------------------------------------------

CREATE TABLE person (
    id                  INTEGER PRIMARY KEY AUTOINCREMENT,

    -- Optional genealogical identifier
    kekule_number       INTEGER UNIQUE,

    -- Display name used by the UI
    preferred_surname   TEXT,
    preferred_given     TEXT,

    sex                 TEXT,

    research_status     TEXT NOT NULL DEFAULT 'UNVERIFIED'
        CHECK (
            research_status IN (
                'CONFIRMED',
                'ASSUMED',
                'UNVERIFIED',
                'PLACEHOLDER'
            )
        ),

    created_at          TEXT NOT NULL,
    updated_at          TEXT NOT NULL
);

CREATE UNIQUE INDEX idx_person_kekule
ON person(kekule_number)
WHERE kekule_number IS NOT NULL;

------------------------------------------------------------
-- PERSON NAMES
------------------------------------------------------------
--
-- Application rule:
--
-- person.preferred_surname
-- person.preferred_given
--
-- must always match the person_name row where
-- is_preferred = 1
--
------------------------------------------------------------

CREATE TABLE person_name (
    id                  INTEGER PRIMARY KEY AUTOINCREMENT,

    person_id           INTEGER NOT NULL,

    name_type           TEXT NOT NULL,

    surname             TEXT,
    given_names         TEXT,

    is_preferred        INTEGER NOT NULL DEFAULT 0,

    FOREIGN KEY(person_id)
        REFERENCES person(id)
        ON DELETE CASCADE
);

CREATE INDEX idx_person_name_person
ON person_name(person_id);

------------------------------------------------------------
-- FAMILY
------------------------------------------------------------

CREATE TABLE family (
    id                  INTEGER PRIMARY KEY AUTOINCREMENT,

    created_at          TEXT NOT NULL,
    updated_at          TEXT NOT NULL
);

------------------------------------------------------------
-- FAMILY MEMBERS
------------------------------------------------------------
--
-- Valid roles:
--
-- FATHER
-- MOTHER
-- PARENT
-- PARTNER
-- UNKNOWN
--
------------------------------------------------------------

CREATE TABLE family_member (
    id                  INTEGER PRIMARY KEY AUTOINCREMENT,

    family_id           INTEGER NOT NULL,
    person_id           INTEGER NOT NULL,

    role                TEXT NOT NULL,

    FOREIGN KEY(family_id)
        REFERENCES family(id)
        ON DELETE CASCADE,

    FOREIGN KEY(person_id)
        REFERENCES person(id)
        ON DELETE CASCADE
);

CREATE INDEX idx_family_member_family
ON family_member(family_id);

CREATE INDEX idx_family_member_person
ON family_member(person_id);

CREATE UNIQUE INDEX idx_family_member_unique
ON family_member(
    family_id,
    person_id,
    role
);

------------------------------------------------------------
-- FAMILY CHILDREN
------------------------------------------------------------

CREATE TABLE family_child (
    family_id           INTEGER NOT NULL,
    child_id            INTEGER NOT NULL,

    PRIMARY KEY (
        family_id,
        child_id
    ),

    FOREIGN KEY(family_id)
        REFERENCES family(id)
        ON DELETE CASCADE,

    FOREIGN KEY(child_id)
        REFERENCES person(id)
        ON DELETE CASCADE
);

CREATE INDEX idx_family_child_child
ON family_child(child_id);

------------------------------------------------------------
-- PLACES
------------------------------------------------------------

CREATE TABLE place (
    id                  INTEGER PRIMARY KEY AUTOINCREMENT,

    name                TEXT NOT NULL,

    parent_place_id     INTEGER,

    latitude            REAL,
    longitude           REAL,

    notes               TEXT,

    FOREIGN KEY(parent_place_id)
        REFERENCES place(id)
);

CREATE INDEX idx_place_parent
ON place(parent_place_id);

------------------------------------------------------------
-- EVENTS
------------------------------------------------------------

CREATE TABLE event (
    id                  INTEGER PRIMARY KEY AUTOINCREMENT,

    event_type          TEXT NOT NULL,

    date_text           TEXT,

    place_id            INTEGER,

    description         TEXT,

    created_at          TEXT NOT NULL,
    updated_at          TEXT NOT NULL,

    FOREIGN KEY(place_id)
        REFERENCES place(id)
);

CREATE INDEX idx_event_type
ON event(event_type);

CREATE INDEX idx_event_place
ON event(place_id);

------------------------------------------------------------
-- EVENT PARTICIPANTS
------------------------------------------------------------
--
-- Examples:
--
-- CHILD
-- FATHER
-- MOTHER
-- SPOUSE
-- DECEASED
-- BAPTIZED
-- GODPARENT
-- OFFICIANT
--
------------------------------------------------------------

CREATE TABLE event_participant (
    id                  INTEGER PRIMARY KEY AUTOINCREMENT,

    event_id            INTEGER NOT NULL,

    person_id           INTEGER,
    family_id           INTEGER,

    role                TEXT NOT NULL,

    FOREIGN KEY(event_id)
        REFERENCES event(id)
        ON DELETE CASCADE,

    FOREIGN KEY(person_id)
        REFERENCES person(id)
        ON DELETE CASCADE,

    FOREIGN KEY(family_id)
        REFERENCES family(id)
        ON DELETE CASCADE,

    CHECK (
        (
            person_id IS NOT NULL
            AND family_id IS NULL
        )
        OR
        (
            person_id IS NULL
            AND family_id IS NOT NULL
        )
    )
);

CREATE INDEX idx_event_participant_event
ON event_participant(event_id);

CREATE INDEX idx_event_participant_person
ON event_participant(person_id);

CREATE INDEX idx_event_participant_family
ON event_participant(family_id);

------------------------------------------------------------
-- SOURCES
------------------------------------------------------------

CREATE TABLE source (
    id                  INTEGER PRIMARY KEY AUTOINCREMENT,

    title               TEXT NOT NULL,

    repository          TEXT,

    reference           TEXT,

    description         TEXT,

    created_at          TEXT NOT NULL,
    updated_at          TEXT NOT NULL
);

------------------------------------------------------------
-- MEDIA
------------------------------------------------------------

CREATE TABLE media (
    id                  INTEGER PRIMARY KEY AUTOINCREMENT,

    filename            TEXT NOT NULL,

    relative_path       TEXT NOT NULL,

    mime_type           TEXT,

    checksum            TEXT,

    description         TEXT,

    file_size           INTEGER,

    created_at          TEXT NOT NULL
);

CREATE UNIQUE INDEX idx_media_checksum
ON media(checksum)
WHERE checksum IS NOT NULL;

------------------------------------------------------------
-- NOTES
------------------------------------------------------------

CREATE TABLE note (
    id                  INTEGER PRIMARY KEY AUTOINCREMENT,

    title               TEXT,

    content             TEXT NOT NULL,

    created_at          TEXT NOT NULL,
    updated_at          TEXT NOT NULL
);

------------------------------------------------------------
-- GENERIC LINKS
------------------------------------------------------------
--
-- IMPORTANT:
--
-- SQLite cannot enforce referential integrity for
-- entity_type/entity_id pairs.
--
-- Validation is handled by the application layer.
--
------------------------------------------------------------

CREATE TABLE source_link (
    source_id           INTEGER NOT NULL,

    entity_type         TEXT NOT NULL,
    entity_id           INTEGER NOT NULL,

    PRIMARY KEY (
        source_id,
        entity_type,
        entity_id
    ),

    FOREIGN KEY(source_id)
        REFERENCES source(id)
        ON DELETE CASCADE
);

CREATE INDEX idx_source_link_entity
ON source_link(entity_type, entity_id);

------------------------------------------------------------

CREATE TABLE media_link (
    media_id            INTEGER NOT NULL,

    entity_type         TEXT NOT NULL,
    entity_id           INTEGER NOT NULL,

    PRIMARY KEY (
        media_id,
        entity_type,
        entity_id
    ),

    FOREIGN KEY(media_id)
        REFERENCES media(id)
        ON DELETE CASCADE
);

CREATE INDEX idx_media_link_entity
ON media_link(entity_type, entity_id);

------------------------------------------------------------

CREATE TABLE note_link (
    note_id             INTEGER NOT NULL,

    entity_type         TEXT NOT NULL,
    entity_id           INTEGER NOT NULL,

    PRIMARY KEY (
        note_id,
        entity_type,
        entity_id
    ),

    FOREIGN KEY(note_id)
        REFERENCES note(id)
        ON DELETE CASCADE
);

CREATE INDEX idx_note_link_entity
ON note_link(entity_type, entity_id);