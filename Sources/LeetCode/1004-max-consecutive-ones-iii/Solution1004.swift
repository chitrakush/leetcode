// LeetCode 1004. Max Consecutive Ones III
// https://leetcode.com/problems/max-consecutive-ones-iii/
// Tags: Sliding Window, Array
// Difficulty: Medium

struct Solution1004 {
    func longestOnes(_ nums: [Int], _ k: Int) -> Int {
     //[0,0,1,1,1,0,0], 0
    //      L,R
        var left = 0
        var right = 0
        var maxSize = 0
        var zeroCount = 0
        
        
        for right in 0..<nums.count {
            if nums[right] == 0 {
                zeroCount += 1
            }
            if zeroCount > k {
                if nums[left] == 0 {
                    zeroCount -= 1
                }
                left += 1
            }
            maxSize = max(maxSize, right-left+1)
        }
        
        return maxSize
    }
}
