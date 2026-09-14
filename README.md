# HDI_4DWP_Bookmarks

A 4D v16 **HDI** (How Do I) binary database converted to a 4D project using 4D 21. The codebase was then updated and cleaned up with the help of **GitHub Copilot**.

## Origin

This project started as a binary `.4DB` example database originally distributed with 4D v16. It was converted to the modern project architecture (`.4DProject`) using 4D 21's built-in binary-to-project conversion tool.

- **Blog post:** https://blog.4d.com/a-new-feature-in-4d-write-pro-bookmarks/

- **Original download:** https://download.4d.com/Demos/4D_v16/HDI_4DWP_Bookmarks.zip

## Overview

This example demonstrates the **bookmark** feature of **4D Write Pro** (4WP): named, persistent markers that anchor a range of text in a document so it can be recalled and re-selected later, even after the document has been edited elsewhere. The demo form (`HDI2`) hosts two 4D Write Pro areas — an introductory "Infos" document and a "Demo" document — and a list box that mirrors the current set of bookmarks in the Demo document.

## Features

- **Create a bookmark** from the current text selection, prompting for a name (`WP NEW BOOKMARK`).
- **List bookmarks** in a list box, sourced live from the document (`WP GET BOOKMARKS`).
- **Jump to a bookmark** by selecting it in the list, which re-selects the bookmarked range in the 4D Write Pro area (`WP Bookmark range` + `WP SELECT`).
- **Delete a bookmark** from the list (`WP DELETE BOOKMARK`).
- **Export** either 4D Write Pro area to a standalone `.4wp` document (`WP EXPORT DOCUMENT`).
- A splash screen with minimum-version/license gating before the demo form opens.

## Points of Interest

The codebase has been modernised end to end as a reference for current 4D project-mode conventions:

- **Localisation** — all user-facing strings (menus, form labels, prompts) are resolved via `:xliff:` references / `Localized string(...)`, with English and Japanese XLIFF resources under `Resources/*.lproj/`.
- **Modern language syntax** — legacy `C_*` declarations replaced with `var`/`#DECLARE` throughout, including the compiler declaration files.
- **Menu standard actions** — the Quit menu item uses the built-in `"action": "quit"` instead of a one-line wrapper method.
- **Method visibility** — subroutines, form-event handlers, and callbacks are marked `"invisible":true` so only true entry points show up in the Run Method dialog.
- **Startup pattern** — the splash window is opened via `CALL WORKER` + non-blocking `DIALOG(...;*)` with window-reuse detection, replacing the older `New process`-based approach.
- **Dark mode & Liquid Glass** — `styleSheets.css` / `styleSheets_mac.css` adapt colors to light/dark mode and give buttons the correct height for macOS Tahoe's Liquid Glass appearance.
- **List box defaults** — ellipsis truncation disabled and legacy (last-column-grows) resizing enabled for predictable column widths.

## References

- [4D Write Pro bookmarks](https://developer.4d.com/docs/WritePro/wp-bookmarks)
- [`WP NEW BOOKMARK`](https://developer.4d.com/docs/commands/wp-new-bookmark)
- [`WP GET BOOKMARKS`](https://developer.4d.com/docs/commands/wp-get-bookmarks)
- [`WP DELETE BOOKMARK`](https://developer.4d.com/docs/commands/wp-delete-bookmark)
- [`WP Bookmark range`](https://developer.4d.com/docs/commands/wp-bookmark-range)
- [`WP EXPORT DOCUMENT`](https://developer.4d.com/docs/commands/wp-export-document)

## Screenshots
