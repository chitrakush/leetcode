# 238. Product of Array Except Self

[LeetCode link](https://leetcode.com/problems/product-of-array-except-self/)

**Difficulty:** Medium
**Tags:** Array, String
**Status:** ✅ Completed

## Approach

Two passes without division: accumulate prefix products left-to-right, then multiply in suffix products right-to-left.

## Complexity

- Time: O(n)
- Space: O(n) excluding the output array
