# Technische Architektur-Spezifikation: Desktop-Anwendung zur Ahnenforschung - Ancestra

---

## 1. High-Level-Architektur & Systemüberblick

`Ancestra` basiert auf einer modernen **Zwei-Prozess-Architektur**, die durch das Framework **Tauri v2** realisiert wird. Diese Trennung verbindet die grafische Flexibilität moderner Web-Technologien mit der Systemnähe und Performance nativer Programmiersprachen.

- **Frontend-Prozess (WebView-Sandbox):** Die Benutzeroberfläche und die clientseitige Logik laufen in einer isolierten Webview-Umgebung (unter Windows 11 basierend auf Microsoft Edge WebView2). Dieser Prozess agiert in einer strengen Sandbox, um das UI von direkten Systemoperationen abzuschirmen.
- **Backend-Prozess (Rust-Core):** Ein nativer, speichersicherer Rust-Prozess verwaltet die Systemressourcen, steuert das Dateisystem und wickelt die Datenpersistenz ab.
- **Kommunikationsmodell:** Beide Prozesse sind strikt voneinander getrennt und kommunizieren ausschließlich über eine kontrollierte, asynchrone IPC-Brücke (Inter-Process Communication).

---

## 2. Entwicklungsumgebung & Toolchain

Das Entwicklungssystem ist standardisiert auf:

- **Betriebssystem:** Windows 11
- **IDE (Integrated Development Environment):** Visual Studio Code (VS Code)
- **Build- und Entwicklungstools:**
- **Vite:** High-Performance Bundler und Entwicklungsserver für das TypeScript-/Frontend-Hot-Reloading.
- **Tauri-CLI:** Kommandozeilenwerkzeug zur Orchestrierung des Dev-Servers, der Kompilierung und des Bundle-Packagings.

### 2.1 Einrichtung der Entwicklungsumgebung unter Windows 11

Dieses Kapitel beschreibt die Einrichtung einer vollständigen Entwicklungsumgebung für die Entwicklung von Ancestra unter Windows 11.

Voraussetzung ist eine aktuelle Installation von Windows 11 sowie eine bereits installierte Version von Visual Studio Code (VS Code).

#### Installationsphilosophie

Für die Entwicklung von Ancestra wird eine native Windows-Installation der Toolchain empfohlen. Die Anwendung verwendet Tauri v2, Rust, TypeScript und SQLite und wird als native Desktop-Anwendung für Windows entwickelt.

Auf den Einsatz von Docker als primäre Entwicklungsumgebung wird bewusst verzichtet.

#### Git installieren

Installation über Winget:

```powershell
winget install Git.Git
```

Installation prüfen:

```powershell
git --version
```

#### Node.js LTS installieren

```powershell
winget install OpenJS.NodeJS.LTS
```

Installation prüfen:

```powershell
node --version
npm --version
```

#### Rust Toolchain installieren

```powershell
winget install Rustlang.Rustup
```

Anschließend:

```powershell
rustup update
rustup default stable
```

Installation prüfen:

```powershell
rustc --version
cargo --version
```

---

## 3. Komponenten und Technologie-Stack

- **Frontend:**
  - **TypeScript:** Statisch typisierte Programmiersprache für die UI-Logik und das State-Management.
  - **HTML / CSS:** Strukturierung und Styling der Benutzeroberfläche unter Nutzung modernster Web-Standards (Flexbox, CSS Grid, SVG-Rendering).

- **Backend / Core:**
  - **Tauri (v2):** Leichtgewichtiger nativer Container zur Bereitstellung des Anwendungsfensters und der Systemintegration.
  - **Rust:** Systemsprache für den nativen Backend-Kern, die Speichersicherheit ohne Garbage Collector gewährleistet.
  - **`rusqlite`:** Rust-Binding für SQLite zur performanten und typsicheren Anbindung der relationalen Datenbank.

- **Datenhaltung:**
- **SQLite (`ahnen.db`):** Transaktionssichere, relationale Datenbank, die als eigenständige Datei direkt auf dem lokalen Dateisystem des Endnutzers liegt und ausschließlich vom Rust-Backend gemountet und manipuliert wird.

---

## 4. Kommunikation & IPC (Inter-Process Communication)

Da Frontend und Backend in getrennten Speicherbereichen laufen, erfolgt der Datenaustausch über eine standardisierte IPC-Schnittstelle:

- **Frontend-Aufrufe (`invoke`):** Das TypeScript-Frontend triggert asynchrone Operationen über die Tauri-API (`await invoke('command_name', { payload })`).
- **Backend-Handler (`#[tauri::command]`):** Das Rust-Backend registriert entsprechende Funktionen als Befehle, verarbeitet die Anfragen (z. B. Datenbankabfragen) und gibt die Ergebnisse zurück.
- **Serialisierung:** Die Übertragung von Datenstrukturen zwischen JavaScript/TypeScript und Rust erfolgt vollautomatisch serialisiert im **JSON-Format**.

---

## 5. Abhängigkeiten (Dependencies)

- **Entwicklungs-Abhängigkeiten (auf dem Dev-PC):**
  - **Node.js & npm:** Paketmanagement und Ausführungsumgebung für den TypeScript-Compiler und Vite.
  - **Rust-Toolchain (`rustup` & `cargo`):** Compiler und Paketmanager für den Rust-Backend-Code.
  - **Tauri-CLI:** Build-Werkzeug zur Erstellung der App-Bundles.
  - **Windows C++ Build Tools:** Notwendige Toolchain zur Kompilierung nativer Windows-Bibliotheken.

- **Endnutzer-Abhängigkeiten (Laufzeit):**
  - **Keine zusätzlichen Laufzeit-Abhängigkeiten.** Die Anwendung wird als eigenständige, native `.exe`-Datei kompiliert. Die erforderliche **Windows WebView2-Runtime** ist auf Windows 11 standardmäßig vorinstalliert.

---

## 6. Build- und Deployment-Pipeline

- **Entwicklungsmodus:**
  - Start über `npm run tauri dev`.
  - Vite stellt einen lokalen Dev-Server für das Frontend bereit; die Tauri-CLI kompiliert den Rust-Code im Hintergrund und startet die App mit Hot-Module-Replacement (HMR) für Echtzeit-Änderungen am Frontend.

- **Produktions-Build & Packaging:**
  - Ausführung des Build-Prozesses über die Tauri-CLI (z. B. `npm run tauri build`).
  - Optimierung und Minifizierung des TypeScript-/Frontend-Codes durch Vite.
  - Release-Kompilierung des Rust-Backends in optimiertem Maschinencode (`--release`).
  - Bundling aller Assets in eine eigenständige, native Windows-Anwendung (`.exe`).
