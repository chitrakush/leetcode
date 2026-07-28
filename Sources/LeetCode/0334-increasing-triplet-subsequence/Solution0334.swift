struct Solution0334 {
    func increasingTriplet(_ nums: [Int]) -> Bool {
        var first = Int.max
        var second = Int.max
        for n in nums {
            if n <= first {
                first = n
            } else if n <= second {
                second = n
            } else {
                return true
            }
        }
        return false
    }
}
