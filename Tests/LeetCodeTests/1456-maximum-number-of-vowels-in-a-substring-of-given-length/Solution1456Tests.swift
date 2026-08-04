import XCTest
@testable import LeetCode

final class Solution1456Tests: XCTestCase {
    func testExamples() {
        let solution = Solution1456()
        XCTAssertEqual(solution.maxVowels("abciiidef", 3), 3)
        XCTAssertEqual(solution.maxVowels("aeiou", 2), 2)
        XCTAssertEqual(solution.maxVowels("leetcode", 3), 2)
    }

    func testWindowIsWholeString() {
        let solution = Solution1456()
        XCTAssertEqual(solution.maxVowels("aeiou", 5), 5)
    }

    func testNoVowels() {
        let solution = Solution1456()
        XCTAssertEqual(solution.maxVowels("bcdfg", 2), 0)
    }

    func testAllVowels() {
        let solution = Solution1456()
        XCTAssertEqual(solution.maxVowels("aaaaa", 3), 3)
    }

    func testWindowSizeOne() {
        let solution = Solution1456()
        XCTAssertEqual(solution.maxVowels("leetcode", 1), 1)
    }

    func testSingleCharacterVowel() {
        let solution = Solution1456()
        XCTAssertEqual(solution.maxVowels("a", 1), 1)
    }

    func testSingleCharacterConsonant() {
        let solution = Solution1456()
        XCTAssertEqual(solution.maxVowels("b", 1), 0)
    }

    func testVowelsClusteredAtEnd() {
        let solution = Solution1456()
        XCTAssertEqual(solution.maxVowels("bcdaeiou", 4), 4)
    }

    func testVowelsClusteredAtStart() {
        let solution = Solution1456()
        XCTAssertEqual(solution.maxVowels("aeioubcd", 4), 4)
    }

    func testLargeRepeatedInput() {
        let solution = Solution1456()
        let s = String(repeating: "aeb", count: 40_000)
        XCTAssertEqual(solution.maxVowels(s, 3), 2)
    }
}
