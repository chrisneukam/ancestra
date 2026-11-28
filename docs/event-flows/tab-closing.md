# Tab Closing

## Purpose

Defines workspace behavior when tabs are closed.

---

# Flow

User closes active tab

↓

Workspace selects replacement tab

↓

Workspace Focus changes

↓

Navigator updates

↓

Inspector updates

---

# Alternative

User closes inactive tab

↓

Tab removed

↓

Workspace Focus unchanged

↓

Navigator unchanged

↓

Inspector unchanged

---

# Result

The active workspace tab always owns focus.
