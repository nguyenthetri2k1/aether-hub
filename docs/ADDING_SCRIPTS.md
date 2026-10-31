# Adding a script

## 1. Create the file

Put the script in `hub/scripts/` using a short, lowercase name:

```text
hub/scripts/fullbright.lua
```

Start the file with a one-line header:

```lua
-- Aether Hub - Fullbright
-- Visuals category. Safe to inspect and edit.
```

## 2. Add a manifest entry

Open `hub/scripts.json` and add an object:

```json
{
  "name": "Fullbright",
  "file": "scripts/fullbright.lua",
  "category": "Visuals",
  "description": "Brightness, clock time, fog and shadows in one pass."
}
```

Keep the category to one of: `Visuals`, `Movement`, `Combat`, `Utility`.

## 3. Test

- Run the script in a clean session.
- Check the executor console for errors.
- Confirm it does not download another script or send data anywhere.
- Confirm it can be stopped or toggled off where the behavior is persistent.

## 4. Open a pull request

Include:

- the script file;
- the manifest entry;
- a short note about what it does and what you tested;
- a screenshot or console output if the script has a visible result.

## Style

- Plain Luau, no obfuscation.
- Short comments over long explanations.
- No remote `loadstring`.
- No hidden HTTP requests.
- No credential, cookie or file access.
- Prefer a toggle over a permanent change when the effect is invasive.
