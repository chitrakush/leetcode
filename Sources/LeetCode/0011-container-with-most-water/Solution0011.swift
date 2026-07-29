// LeetCode 11. Container With Most Water
// https://leetcode.com/problems/container-with-most-water/
// Tags: Two Pointers, Array
// Difficulty: Medium

struct Solution0011 {
    func maxArea(_ height: [Int]) -> Int {
        var maxVolume = 0

        var i = 0
        var j = height.count-1

        while i < j {
            let diff = j-i
            let minHeight = min(height[i], height[j])
            let volume = diff * minHeight
            if volume > maxVolume {
                maxVolume = volume
            }
            if height[i]<height[j] {
                i += 1
            } else {
                j -= 1
            }
        }

        return maxVolume
    }
}
