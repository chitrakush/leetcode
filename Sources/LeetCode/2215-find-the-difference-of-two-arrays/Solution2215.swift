// LeetCode 2215. Find the Difference of Two Arrays
// https://leetcode.com/problems/find-the-difference-of-two-arrays/
// Tags: Hash Table
// Difficulty: Easy

struct Solution2215 {
    func findDifference(_ nums1: [Int], _ nums2: [Int]) -> [[Int]] {
        
        var set1 = Set(nums1)
        var set2 = Set(nums2)
        
        return [Array(set1.subtracting(set2)), Array(set2.subtracting(set1))]
        
    }
}
