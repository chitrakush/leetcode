struct Solution0643 {
    func findMaxAverage(_ nums: [Int], _ k: Int) -> Double {
        var windowSum = nums[0..<k].reduce(0, +)
        var maxSum = windowSum
        for i in k..<nums.count {
            windowSum += nums[i] - nums[i - k]
            maxSum = max(maxSum, windowSum)
        }
        return Double(maxSum) / Double(k)
    }
}
