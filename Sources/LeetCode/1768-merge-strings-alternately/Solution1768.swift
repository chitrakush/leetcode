struct Solution1768 {
    func mergeAlternately(_ word1: String, _ word2: String) -> String {
        let a = Array(word1)
        let b = Array(word2)
        var result = ""
        var i = 0, j = 0
        while i < a.count || j < b.count {
            if i < a.count { result.append(a[i]); i += 1 }
            if j < b.count { result.append(b[j]); j += 1 }
        }
        return result
    }
}
