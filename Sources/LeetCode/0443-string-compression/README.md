# 443. String Compression

[LeetCode link](https://leetcode.com/problems/string-compression/)

**Difficulty:** Medium
**Tags:** Array, String
**Status:** ✅ Completed

## Approach

Two pointers: read runs of identical characters, write the character followed by its count (if > 1) as individual digits in place.

## Complexity

- Time: O(n)
- Space: O(1) extra space
