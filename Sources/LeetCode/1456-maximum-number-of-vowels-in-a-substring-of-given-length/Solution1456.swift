// LeetCode 1456. Maximum Number of Vowels in a Substring of Given Length
// https://leetcode.com/problems/maximum-number-of-vowels-in-a-substring-of-given-length/
// Tags: Sliding Window, Array
// Difficulty: Medium

@available(macOS 13.0, *)
struct Solution1456 {
    func maxVowels(_ s: String, _ k: Int) -> Int {
        let stringArray = s.split(separator: "")
        let vowels: [Character] = ["a","e","i","o","u"]
        
        var left = 0
        var right = k-1
        var c = left
        
        var maxVowels = 0
        var vowelCount = 0
        
        while c <= right {
            if vowels.contains(stringArray[c]) {
                vowelCount += 1
            }
            c += 1
        }
        
        maxVowels = vowelCount
        right += 1
        
        while right < stringArray.count {
            
            if(vowels.contains(stringArray[left])){
                vowelCount -= 1
            }
            if(vowels.contains(stringArray[right])){
                vowelCount += 1
            }
            
            if maxVowels < vowelCount {
                maxVowels = vowelCount
            }
            
            left += 1
            right += 1
        }
        
        return maxVowels
    }
}
