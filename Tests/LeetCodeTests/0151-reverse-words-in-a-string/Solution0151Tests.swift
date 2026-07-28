import XCTest
@testable import LeetCode

final class Solution0151Tests: XCTestCase {
    func testExamples() {
        let solution = Solution0151()
        XCTAssertEqual(solution.reverseWords("the sky is blue"), "blue is sky the")
        XCTAssertEqual(solution.reverseWords("  hello world  "), "world hello")
        XCTAssertEqual(solution.reverseWords("a good   example"), "example good a")
    }
}
