struct Solution0283 {
    func moveZeroes(_ nums: inout [Int]) {
        var insertPos = 0
        for i in 0..<nums.count {
            if nums[i] != 0 {
                nums.swapAt(i, insertPos)
                insertPos += 1
            }
        }
    }
}
