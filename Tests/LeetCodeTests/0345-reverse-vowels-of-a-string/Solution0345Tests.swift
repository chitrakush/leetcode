import XCTest
@testable import LeetCode

final class Solution0345Tests: XCTestCase {
    func testExamples() {
        let solution = Solution0345()
        XCTAssertEqual(solution.reverseVowels("IceCreAm"), "AceCreIm")
        XCTAssertEqual(solution.reverseVowels("leetcode"), "leotcede")
    }
}
