---
name: leetReview
description: Review the solution just written for the LeetCode problem currently being worked on in this repo. Compiles the code, runs its test suite, and if it passes, quizzes the user on time/space complexity before marking the problem solved in its README. Use when the user says things like "review my solution", "check my answer", "/leetReview", or "did I get this right".
---

# leetReview

Review whatever solution the user just wrote for the problem currently in play in this conversation. You verify correctness and complexity; the user doesn't move on until both check out.

## Steps

1. **Identify the problem.** Use the problem most recently worked on in this conversation (e.g. the one `leetStart` set up). If it's not clear from context, ask the user which problem (number or title) to review.

2. **Locate the files**: `Sources/LeetCode/<dir>/Solution<NNNN>.swift`, its `Tests/LeetCodeTests/<dir>/Solution<NNNN>Tests.swift`, and `Sources/LeetCode/<dir>/README.md`.

3. **Compile and test.** Run:
   ```
   swift test --filter Solution<NNNN>Tests
   ```
   This both compiles the target and runs its tests in one step.

4. **If it fails** (build error or any failing test case):
   - Show the specific compiler error or the failing test case(s) with expected vs. actual output.
   - Work out the correct solution yourself and show it to the user, with a brief explanation of what was wrong with their version.
   - Ask whether they want you to apply the fix to `Solution<NNNN>.swift`. Do not overwrite their file without asking.
   - Stop here — do not proceed to the complexity questions until the solution passes.

5. **If it passes**, ask about complexity **one at a time**, waiting for the user's answer before asking the next:
   - First: "What's the time complexity of your solution?"
   - Then, after they answer: "What's the space complexity?"

6. **Evaluate each answer** by reasoning about their actual code (loops, recursion depth, data structures allocated):
   - If correct: confirm it, and give the specific reason it's correct (e.g. "O(n log n) — the sort dominates the two linear passes").
   - If wrong: say so, explain concretely why (point to the line/construct that changes the complexity), and give the correct complexity with reasoning.

7. **Update the README** at `Sources/LeetCode/<dir>/README.md` once both complexities are settled (use the correct values regardless of whether the user's guess was right):
   - Set `**Status:** ✅ Completed` (replacing `⬜ Not started`).
   - Fill in the `## Complexity` section's `- Time:` and `- Space:` lines.
   - Don't touch the `## Approach` section or anything else in the file.

8. Do not commit or push these changes — leave that to the user.
