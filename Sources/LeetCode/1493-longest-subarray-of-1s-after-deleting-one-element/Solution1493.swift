// LeetCode 1493. Longest Subarray of 1's After Deleting One Element
// https://leetcode.com/problems/longest-subarray-of-1s-after-deleting-one-element/
// Tags: Sliding Window, Array
// Difficulty: Medium

struct Solution1493 {
    
    
    func longestSubarray(_ nums: [Int]) -> Int {
        var zeroCount = 0
        var maxSize = 0
        var left = 0
        var right = 0
        
        while right < nums.count {
            if nums[right] == 0 {
                zeroCount += 1
            }
            
            while zeroCount > 1 {
                if nums[left] == 0 {
                    zeroCount -= 1
                }
                left += 1
            }
            
            maxSize = max(maxSize, right-left + 1)
            right += 1
        }
        
        return maxSize-1
    }
}
