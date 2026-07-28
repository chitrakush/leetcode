# 643. Maximum Average Subarray I

[LeetCode link](https://leetcode.com/problems/maximum-average-subarray-i/)

**Difficulty:** Easy
**Tags:** Sliding Window, Array
**Status:** ✅ Completed

## Approach

Fixed-size sliding window: seed the sum over the first k elements, then slide by adding the entering element and removing the leaving one.

## Complexity

- Time: O(n)
- Space: O(1)
