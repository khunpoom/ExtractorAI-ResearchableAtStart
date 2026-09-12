# Extractor AI Researchable at Start

Public mod for **Surviving Mars: Relaunched**.

**GitHub:** https://github.com/khunpoom/ExtractorAI-ResearchableAtStart

Makes the vanilla Breakthrough **Extractor AI** researchable from the start of the game. It does **not** research the tech for you.

After you research it, Metals / Rare Metals extractors can run unmanned at 50% performance (close worker slots as usual).

## Credit

This mod was written entirely by **Grok (xAI)** for [khunpoom](https://github.com/khunpoom) / xiperxp.

Fork it, edit it, republish it. MIT licensed — do whatever you want.

## Install

1. Download this repo as ZIP (**Code → Download ZIP**), or copy the `ExtractorAI_ResearchableAtStart` folder.
2. Place that folder in:
   - `%AppData%\\Surviving Mars Relaunched\\Mods`
   - or `%AppData%\\Surviving Mars\\Mods`
3. Enable it in the in-game Mod Manager.
4. New game recommended. Existing saves work too.

## Paradox Mods upload

The in-game uploader needs these fields (already in `metadata.lua`):

- **Summary (PDX only)** → `short_description`
- **Last Changes** → `last_changes`
- **Preview image** → `Preview.jpg` (optional but PDX wants it)

If you still see those errors in the Mod Editor, paste the same two strings into the empty fields and save before uploading.

## What it does

On `CityStart` and `LoadGame`, the mod calls `SetTechDiscovered("ExtractorAI")` if the breakthrough is not already discovered/researched. It also removes Extractor AI from the random anomaly queue so it is not duplicated.
