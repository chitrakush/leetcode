# 1071. Greatest Common Divisor of Strings

[LeetCode link](https://leetcode.com/problems/greatest-common-divisor-of-strings/)

**Difficulty:** Easy
**Tags:** Array, String
**Status:** ✅ Completed

## Approach

A common divisor string must satisfy str1+str2 == str2+str1; if so, the answer is the prefix of length gcd(len1, len2).

## Complexity

- Time: O(n + m)
- Space: O(n + m)
