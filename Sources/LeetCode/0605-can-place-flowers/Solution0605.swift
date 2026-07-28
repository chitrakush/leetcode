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
    
//    func canPlaceFlowers(_ flowerbed: [Int], _ n: Int) -> Bool {
//            
//            var count = 0
//            var newBed = flowerbed
//
//            if newBed.count == 1, newBed[0] == 0 {
//                count = 1
//                return n <= count
//            }
//
//            for i in 0..<newBed.count {
//
//                if i == 0 {
//                    if newBed[i] == 0, newBed[i+1] == 0 {
//                        incrementAndFill(at: i)
//                    }
//                } else if i == newBed.count-1 {
//                    if newBed[i] == 0, newBed[i-1] == 0 {
//                        incrementAndFill(at: i)
//                    }
//                } else if newBed[i-1] == 0, newBed[i+1] == 0, newBed[i] == 0 {
//                    incrementAndFill(at: i)
//                }
//            }
//
//            return n <= count
//
//            func incrementAndFill(at index: Int) {
//                count += 1
//                newBed[index] = 1
//            }
//        }
}
