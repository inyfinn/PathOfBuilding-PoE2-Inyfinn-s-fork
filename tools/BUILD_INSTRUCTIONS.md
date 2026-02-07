# INYFINN's Fork — Jak pobrać i uruchomić / How to download and run

**Ten fork nie ma Releases.** Zobacz poniżej jak uzyskać działającą aplikację.

*This fork has no Releases. See below how to get a working application.*

---

## Opcja 1: Klonowanie i uruchomienie (Portable)

**Wymagania:** Git

### Kroki

1. **Sklonuj repozytorium:**
   ```powershell
   git clone https://github.com/inyfinn/PathOfBuilding-PoE2-Inyfinn-s-fork.git
   cd PathOfBuilding-PoE2-Inyfinn-s-fork
   ```

2. **Uruchom aplikację** (Windows):
   - **Dwuklik:** Uruchom `run_portable.bat` w głównym folderze repozytorium
   - **Lub z PowerShell:**
     ```powershell
     .\runtime\Path` of` Building-PoE2.exe .\src\Launch.lua
     ```
   - **Lub** utwórz skrót do `runtime\Path of Building-PoE2.exe` z argumentem: `"<ścieżka_do_repo>\src\Launch.lua"`

3. Tryb Dev jest włączony automatycznie (brak auto-update, F5 restart).

---

## Opcja 2: Tworzenie archiwum portable (ZIP)

Użyj skryptu `make_portable.ps1` aby utworzyć gotowe archiwum ZIP.

### Wymagania
- PowerShell 5.1+
- Git (opcjonalnie — do wersji z repozytorium)

### Uruchomienie

```powershell
cd PathOfBuilding-PoE2-Inyfinn-s-fork
.\tools\make_portable.ps1
```

Archiwum zostanie utworzone w `tools\dist\PathOfBuilding-PoE2-Inyfinn-portable.zip`.

### Zawartość archiwum
- `runtime/` — pliki wykonywalne i biblioteki
- `src/` — skrypty Lua (Classes, Modules, Data, TreeData)
- `manifest.xml`, `changelog.txt`, `help.txt`, `LICENSE.md`
- `run_portable.bat` — skrypt uruchamiający

---

## Opcja 3: Instalator EXE (NSIS)

Aby zbudować instalator .exe, potrzebujesz:

- **NSIS 3.07+** — [https://nsis.sourceforge.io/](https://nsis.sourceforge.io/)
- **Python 3.7+**
- **Git**

Oryginalny skrypt instalatora znajduje się w prywatnym repozytorium PathOfBuildingCommunity. Możesz:

1. Użyć **Opcji 2** (make_portable.ps1) i rozpakować ZIP tam gdzie chcesz — to działa jak instalacja portable
2. Skopiować strukturę z oficjalnego release i podmienić pliki z tego forka

---

## Narzędzia w tym repozytorium

| Narzędzie | Opis |
|-----------|------|
| `tools/make_portable.ps1` | Tworzy archiwum ZIP portable |
| `tools/make_portable.bat` | Skrót do uruchomienia make_portable.ps1 |
| `run_portable.bat` | Uruchamia PoB z repozytorium (w głównym folderze) |

---

## Troubleshooting

**"Can't find Launch.lua"** — Uruchamiaj z katalogu głównego repozytorium (gdzie są foldery `runtime` i `src`).

**"Manifest error"** — Ten fork używa lokalnego manifest.xml. Tryb Dev wyłącza auto-update.
