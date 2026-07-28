struct Solution0238 {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        let n = nums.count
        var result = [Int](repeating: 1, count: n)
        var prefix = 1
        for i in 0..<n {
            result[i] = prefix
            prefix *= nums[i]
        }
        var suffix = 1
        for i in stride(from: n - 1, through: 0, by: -1) {
            result[i] *= suffix
            suffix *= nums[i]
        }
        return result
    }
}
