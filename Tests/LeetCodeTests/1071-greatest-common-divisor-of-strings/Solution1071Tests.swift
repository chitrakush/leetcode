import XCTest
@testable import LeetCode

final class Solution1071Tests: XCTestCase {
    func testExamples() {
        let solution = Solution1071()
        XCTAssertEqual(solution.gcdOfStrings("ABCABC", "ABC"), "ABC")
        XCTAssertEqual(solution.gcdOfStrings("ABABAB", "ABAB"), "AB")
        XCTAssertEqual(solution.gcdOfStrings("LEET", "CODE"), "")
    }
}
