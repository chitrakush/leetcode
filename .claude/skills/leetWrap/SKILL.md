---
name: leetWrap
description: Commit and push the changes for the LeetCode problem currently being worked on in this repo. Use when the user says things like "wrap this up", "commit and push", "/leetWrap", or "ship this problem".
---

# leetWrap

Close out work on the problem currently in play in this conversation by committing and pushing just its files.

## Steps

1. **Identify the problem.** Use the problem most recently worked on in this conversation (e.g. the one `leetStart` set up and `leetReview` checked). If it's not clear from context, ask the user which problem (number or title).

2. **Check status.** Run `git status` to see what's changed. Restrict everything below to files under that problem's own paths:
   - `Sources/LeetCode/<dir>/Solution<NNNN>.swift`
   - `Sources/LeetCode/<dir>/README.md`
   - `Tests/LeetCodeTests/<dir>/Solution<NNNN>Tests.swift`

   If there are unrelated changes elsewhere in the working tree, leave them alone — do not stage or commit them.

3. **Stage only those files** by name (never `git add -A` or `git add .`).

4. **Commit.** Look at `git log` for this repo's message style (short, imperative, e.g. "Solve Container With Most Water with two pointers"). Write a similarly-styled one-liner describing what was solved, ending with:
   ```
   Co-Authored-By: Claude Sonnet 5 <noreply@anthropic.com>
   ```

5. **Push** to the current branch's remote.

6. Report back the commit hash and confirm the push succeeded. If nothing was staged (no changes for this problem), say so instead of creating an empty commit.
