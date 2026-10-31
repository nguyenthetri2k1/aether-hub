# Safety

Aether is a review-first script collection. The repository is designed so every file can be opened and understood before it runs.

## Rules for this repository

- No obfuscation.
- No packed or encrypted strings.
- No remote `loadstring` or hidden second stage.
- No HTTP requests from the scripts.
- No access to cookies, tokens, browser data or files.
- No attempts to hide the script from the executor console.

## Before you run a script

1. Open the `.lua` file and read it end to end.
2. Check every `game:GetService`, `Instance.new`, `loadstring`, `require` and HTTP call.
3. If a fork has a different file hash or an extra loader, review it again.
4. Run only scripts you understand.

## Reporting

If a script in this repository does something the description does not mention, open an issue with the file name and the exact line. Security-sensitive reports should not include personal data.
