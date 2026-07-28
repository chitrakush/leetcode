struct Solution1071 {
    func gcdOfStrings(_ str1: String, _ str2: String) -> String {
        if str1 + str2 != str2 + str1 { return "" }
        func gcd(_ a: Int, _ b: Int) -> Int {
            b == 0 ? a : gcd(b, a % b)
        }
        let g = gcd(str1.count, str2.count)
        return String(str1.prefix(g))
    }
}
