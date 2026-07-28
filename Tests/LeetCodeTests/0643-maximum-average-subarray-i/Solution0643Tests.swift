import XCTest
@testable import LeetCode

final class Solution0643Tests: XCTestCase {
    func testExamples() {
        let solution = Solution0643()
        XCTAssertEqual(solution.findMaxAverage([1, 12, -5, -6, 50, 3], 4), 12.75)
        XCTAssertEqual(solution.findMaxAverage([5], 1), 5.0)
    }
}
