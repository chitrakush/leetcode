struct Solution0345 {
    func reverseVowels(_ s: String) -> String {
        let vowels: Set<Character> = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
        var chars = Array(s)
        var i = 0, j = chars.count - 1
        while i < j {
            if !vowels.contains(chars[i]) {
                i += 1
            } else if !vowels.contains(chars[j]) {
                j -= 1
            } else {
                chars.swapAt(i, j)
                i += 1
                j -= 1
            }
        }
        return String(chars)
    }
}
