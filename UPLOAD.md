# FileSystemError when uploading

`Upload failed: FileSystemError` is almost always a packing/path problem, not the Lua.

## 1. Use only the inner mod folder

Copy **this** folder into Mods:

```
ExtractorAI_ResearchableAtStart/
  metadata.lua
  items.lua
  Preview.jpg
  Code/Script.lua
```

Do **not** put the whole GitHub repo (LICENSE, README.md, .git) into Mods.

Windows:
`%AppData%\Surviving Mars Relaunched\Mods\ExtractorAI_ResearchableAtStart`

Linux / Proton:
`~/.steam/steam/steamapps/compatdata/3215050/pfx/drive_c/users/steamuser/AppData/Roaming/Surviving Mars Relaunched/Mods/`

## 2. Preview.jpg must live in that folder

The Preview image field must be exactly `Preview.jpg` (not a Downloads path, not `Z:\...`).

If you used Import from Downloads, copy the file in by hand, set the field back to `Preview.jpg`, Save.

## 3. Create the POPS cache folder

Classic cause of this exact error string:

```
%AppData%\Surviving Mars Relaunched\cache
```

Create `cache` if it is missing. Same parent as `Mods`.

## 4. Upload from a clean editor session

- Back to main menu (no colony loaded)
- Open Mod Editor
- Save the mod once
- Upload to Paradox Mods

If PDX still fails, upload to Steam Workshop from the same editor (different backend).

## 5. Logs

`%AppData%\Surviving Mars Relaunched\logs`

Look for `FileSystemError`, `CDiskstorage`, `Root path dir doesn't exist`, or `Pack`.
