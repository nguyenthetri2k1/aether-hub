# Contributing

## Script rules

- Plain Luau, no obfuscation.
- One clear purpose per file.
- No remote `loadstring`, no hidden HTTP requests, no credential or file access.
- Add a short header comment and a manifest entry.
- Test the script in a clean session before opening a pull request.

## Pull request checklist

- [ ] The script is in `hub/scripts/`.
- [ ] `hub/scripts.json` has a matching entry.
- [ ] The description matches what the script actually does.
- [ ] I read the safety guide.
- [ ] I did not add binaries or downloaded assets.

## Style

- Two-space indentation.
- `local` for everything that does not need to be global.
- Prefer a toggle over a permanent change for invasive effects.
- Keep comments short and concrete.
