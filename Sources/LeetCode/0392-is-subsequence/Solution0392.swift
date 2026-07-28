struct Solution0392 {
    func isSubsequence(_ s: String, _ t: String) -> Bool {
        let sArr = Array(s)
        let tArr = Array(t)
        var i = 0
        for j in 0..<tArr.count where i < sArr.count {
            if sArr[i] == tArr[j] {
                i += 1
            }
        }
        return i == sArr.count
    }
}
