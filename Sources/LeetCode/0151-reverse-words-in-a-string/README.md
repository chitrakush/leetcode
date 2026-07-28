# 151. Reverse Words in a String

[LeetCode link](https://leetcode.com/problems/reverse-words-in-a-string/)

**Difficulty:** Medium
**Tags:** Array, String
**Status:** ✅ Completed

## Approach

Split on whitespace (which collapses runs of spaces and drops empty tokens), then reverse and rejoin with single spaces.

## Complexity

- Time: O(n)
- Space: O(n)
