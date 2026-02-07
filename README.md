# Path of Building 2 — INYFINN's FORK

**To jest moja własna edycja Path of Building 2.**  
*This is my personal fork of Path of Building 2.*

Główni deweloperzy PathOfBuildingCommunity nie chcą zaakceptować tak wielu zmian w tak krótkim czasie. Ten fork zawiera wszystkie moje usprawnienia modułu Trade i inne zmiany, które zgłaszałem jako PR.

*The main PathOfBuildingCommunity developers are not willing to accept so many changes in such a short time. This fork contains all my Trade module improvements and other changes that I submitted as PRs.*

---

## Welcome to Path of Building 2
An offline build planner for Path of Exile 2!

<p float="middle">
  <img alt="Tree tab" src="https://github.com/user-attachments/assets/225bf25f-1ac4-4639-b280-565a24d2a2fc" width="48%" />
  <img alt="Items tab" src="https://github.com/user-attachments/assets/de8e6dc0-1e1a-46c5-b8a4-18877e67d48d" width="48%" />
</p>

## Download / Jak pobrać

**⚠️ Ten fork nie ma Releases.** Oficjalne releases są na [PathOfBuildingCommunity](https://github.com/PathOfBuildingCommunity/PathOfBuilding-PoE2/releases).

*This fork has no Releases. Official releases are at [PathOfBuildingCommunity](https://github.com/PathOfBuildingCommunity/PathOfBuilding-PoE2/releases).*

### Jak skorzystać z tego forka / How to use this fork

| Sposób | Opis |
|--------|------|
| **1. Portable (klonowanie)** | `git clone` repozytorium → uruchom `run_portable.bat` |
| **2. Portable (ZIP)** | Uruchom `tools\make_portable.ps1` → rozpakuj powstały ZIP → uruchom `run_portable.bat` |
| **3. Instalator EXE** | Wymaga NSIS — zobacz `tools/BUILD_INSTRUCTIONS.md` |

Szczegóły: **[tools/BUILD_INSTRUCTIONS.md](tools/BUILD_INSTRUCTIONS.md)**

### Narzędzia w repozytorium

- `run_portable.bat` — uruchamia PoB (po sklonowaniu)
- `tools/make_portable.ps1` — tworzy archiwum ZIP portable
- `tools/make_portable.bat` — skrót do skryptu PowerShell
- `tools/BUILD_INSTRUCTIONS.md` — pełna instrukcja (PL/EN)

## Features
* Comprehensive offence + defence calculations:
  * Calculate your skill DPS, damage over time, life/mana/ES totals and much more!
  * Can factor in auras, buffs, charges, curses, monster resistances and more, to estimate your effective DPS
  * Also calculates life/mana reservations
  * Shows a summary of character stats in the side bar, as well as a detailed calculations breakdown tab which can show you how the stats were derived
  * Supports all skills and support gems, and most passives and item modifiers
    * Throughout the program, supported modifiers will show in blue and unsupported ones in red
  * Full support for minions
  * Support for party play and support builds
* Passive skill tree planner:
  * Support for jewels including most radius/conversion and timeless jewels
  * Features alternate path tracing (mouse over a sequence of nodes while holding shift, then click to allocate them all)
  * Fully integrated with the offence/defence calculations; see exactly how each node will affect your character!
  * Can import PathOfExile.com and PoEPlanner.com passive tree links; links shortened with PoEURL.com also work
* Skill planner:
  * Add any number of main or supporting skills to your build
  * Supporting skills (auras, curses, buffs) can be toggled on and off
  * Automatically applies Socketed Gem modifiers from the item a skill is socketed into
  * Automatically applies support gems granted by items
* Item planner:
  * Add items from in game by copying and pasting them straight into the program!
  * Automatically adds quality to non-corrupted items
  * Search the trade site for the most impactful items
  * Fully integrated with the offence/defence calculations; see exactly how much of an upgrade a given item is!
  * Contains a searchable database of all uniques that are currently in game (and some that aren't yet!)
    * You can choose the modifier rolls when you add a unique to your build
    * Includes all league-specific items and legacy variants
  * Features an item crafting system:
    * You can select from any of the game's base item types
    * You can select prefix/suffix modifiers from lists
    * Custom modifiers can be added, with Master and Essence modifiers available
  * Also contains a database of rare item templates:
    * Allows you to create rare items for your build to approximate the gear you will be using
    * Choose which modifiers appear on each item, and the rolls for each modifier, to suit your needs
    * Has templates that should cover the majority of builds
* **Trade Module (INYFINN's improvements):**
  * **Hybrid Action Button:** Whisper (copies to clipboard) vs Hideout/Travel (opens trade page in browser). Price displayed on both buttons (e.g. "o Whisper: 2 exalted", "o Hideout: 2 exalted").
  * **Traffic lights:** Colored status dot (green/orange/gray) for seller Online/AFK/Offline.
  * **Link button:** Opens trade search in browser with **full item name + exact price filter** in URL — narrows results to the specific item.
  * **Full item name for search:** Uses complete rare name (e.g. "Cataclysm Core Varnished Crossbow") instead of partial whisper text. Commas replaced with spaces for trade site format.
  * **Price filter in URL:** Link and Travel both pass item name + amount + currency — trade site shows only listings at that exact price.
  * **Adaptive tooltip positioning:** Left-of-cursor default, viewport clamping (no off-screen).
  * **Listing Type filter:** Query Options dropdown — Any | Instant Buyout | In person (whisper) | In person ONLINE.
  * **Sort panel scaffold:** Stat pool, sort by stats, favorite stats (per TRADER_SORT_BY_STATS_SPEC).
  * **Settings persistence:** tradeDefaults (maxPrice, checkboxes, jewelType, sockets, lastListingType).
  * **Keyboard:** TAB/Shift+TAB navigation in Query Options popup.
  * Crash fixes, null guards, empty filter handling.
* Other features:
  * You can import passive tree, items, and skills from existing characters
  * Share builds with other users by generating a share code
  * Automatic updating; most updates will only take a couple of seconds to apply

## Changelog
You can find the full version history [here](CHANGELOG.md).

## Contribute
You can find instructions on how to contribute code and bug reports [here](CONTRIBUTING.md).

## Licence
[MIT](https://opensource.org/licenses/MIT)

For 3rd-party licences, see [LICENSE](LICENSE.md).
The licencing information is considered to be part of the documentation.
