struct Solution1431 {
    func kidsWithCandies(_ candies: [Int], _ extraCandies: Int) -> [Bool] {
        let maxCandies = candies.max() ?? 0
        return candies.map { $0 + extraCandies >= maxCandies }
    }
}
