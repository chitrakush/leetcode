// LeetCode 1679. Max Number of K-Sum Pairs
// https://leetcode.com/problems/max-number-of-k-sum-pairs/
// Tags: Two Pointers, Array
// Difficulty: Medium

struct Solution1679 {
    func maxOperations(_ nums: [Int], _ k: Int) -> Int {
        var array = nums
        array.sort(by: <)
        var operations = 0
        if array.count <= 1 {
            return operations
        }
        
        var i = 0
        var j = array.count-1
        
        while i<j {
            if array[i] + array[j] == k {
                i += 1
                j -= 1
                operations += 1
            } else if array[i] + array[j] < k {
                i += 1
            } else {
                j -= 1
            }
        }
        
        return operations
    }
}
