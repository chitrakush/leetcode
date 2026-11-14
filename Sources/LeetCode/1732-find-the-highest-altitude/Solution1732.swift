// LeetCode 1732. Find the Highest Altitude
// https://leetcode.com/problems/find-the-highest-altitude/
// Tags: Prefix Sum, Array
// Difficulty: Easy

struct Solution1732 {
    
    func largestAltitude(_ gain: [Int]) -> Int {
        var maxAltitude = 0
        var sum = 0
        
        for i in 0..<gain.count {
            sum = sum+gain[i]
            maxAltitude = max(maxAltitude, sum)
        }
        return maxAltitude
    }
}
