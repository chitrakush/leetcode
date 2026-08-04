---
name: leetStart
description: Start a LeetCode session in this repo. Asks which problem to work on today (number or title), reviews that problem's README, generates comprehensive Swift test cases for it, and hands implementation back to the user. Use when the user says things like "let's do leetcode", "/leetStart", or "what should I solve today".
---

# leetStart

Kick off a study session on one problem in this repo. You write the test cases; the user writes the solution.

## Steps

1. **Ask which problem.** If the user hasn't already named one in their invocation, ask: "Which problem do you want to do today? (number or title)"

2. **Resolve the problem directory.**
   - Directories live under `Sources/LeetCode/` named `NNNN-kebab-case-title` (4-digit zero-padded number).
   - If given a number, zero-pad to 4 digits and glob `Sources/LeetCode/<NNNN>-*`.
   - If given a title, match it against the directory slug or the `README.md` title line.
   - If nothing matches, tell the user and ask them to confirm the number/title — don't invent a new problem directory.

3. **Read the problem README** at `Sources/LeetCode/<dir>/README.md`. Pull out the description, all example input/output pairs, and the constraints — these drive the test cases.

4. **Check the solution stub** at `Sources/LeetCode/<dir>/Solution<NNNN>.swift`.
   - If it already has a real (non-`TODO`) implementation, tell the user this one looks solved already and confirm they want to redo it before continuing.
   - If the struct has no method signature yet (just `// TODO: implement`), add the canonical LeetCode Swift method signature for this problem with a `fatalError("TODO: implement")` body — just the signature, no logic. This is what lets the test file compile.

5. **Write test cases** into `Tests/LeetCodeTests/<dir>/Solution<NNNN>Tests.swift`, following this repo's existing style (see `Tests/LeetCodeTests/0011-container-with-most-water/Solution0011Tests.swift` for the pattern: `import XCTest`, `@testable import LeetCode`, `final class Solution<NNNN>Tests: XCTestCase`, one `let solution = Solution<NNNN>()` per test, descriptive `test...` method names, plain `XCTAssertEqual` calls).
   Cover, as applicable to the problem:
   - Every example given in the README.
   - Smallest valid input per the constraints (empty / single element / single character).
   - Duplicate or all-equal values.
   - Already-sorted and reverse-sorted input, if order matters.
   - Boundary/extreme values called out in the constraints (e.g. max magnitude, negative numbers, zero).
   - Any other case that would catch an off-by-one or a naive-but-wrong approach.

6. **Verify it compiles**: run `swift build`. It should succeed (the stub compiles even though it `fatalError`s at runtime). Do not run `swift test` expecting it to pass — it's supposed to fail/crash until the user implements the real logic; that's not an error to fix.

7. **Hand off.** Tell the user the test cases are ready at the test file path, and that it's their turn to implement `Solution<NNNN>.<method>` to make them pass. Do not implement the solution yourself unless the user explicitly asks you to.
