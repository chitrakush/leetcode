import XCTest
@testable import LeetCode

final class Solution0392Tests: XCTestCase {
    func testExamples() {
        let solution = Solution0392()
        XCTAssertEqual(solution.isSubsequence("abc", "ahbgdc"), true)
        XCTAssertEqual(solution.isSubsequence("axc", "ahbgdc"), false)
    }
}
