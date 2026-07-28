struct Solution0605 {
    func canPlaceFlowers(_ flowerbed: [Int], _ n: Int) -> Bool {
        var bed = flowerbed
        var count = 0
        for i in 0..<bed.count {
            if bed[i] == 0,
               i == 0 || bed[i - 1] == 0,
               i == bed.count - 1 || bed[i + 1] == 0 {
                bed[i] = 1
                count += 1
            }
        }
        return count >= n
    }
}
