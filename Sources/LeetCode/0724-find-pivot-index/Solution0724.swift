// LeetCode 724. Find Pivot Index
// https://leetcode.com/problems/find-pivot-index/
// Tags: Prefix Sum, Array
// Difficulty: Easy

struct Solution0724 {
    
    //[1, 7, 3, 6, 5, 6]
    func pivotIndex(_ nums: [Int]) -> Int {
        var total = 0
        
        for i in nums {
            total += i
        }
        
        var prefixSum = 0
        var i = 0
        while i < nums.count {
            
            let suffixSum = total - nums[i] - prefixSum
            
            if prefixSum == suffixSum {
                return i
            }
            
            prefixSum += nums[i]
            i += 1
        }
        
        return -1
        
    }
}
