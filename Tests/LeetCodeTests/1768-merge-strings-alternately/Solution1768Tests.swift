import XCTest
@testable import LeetCode

final class Solution1768Tests: XCTestCase {
    func testExamples() {
        let solution = Solution1768()
        XCTAssertEqual(solution.mergeAlternately("abc", "pqr"), "apbqcr")
        XCTAssertEqual(solution.mergeAlternately("ab", "pqrs"), "apbqrs")
        XCTAssertEqual(solution.mergeAlternately("abcd", "pq"), "apbqcd")
    }
}
