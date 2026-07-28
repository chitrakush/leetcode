import XCTest
@testable import LeetCode

final class Solution0334Tests: XCTestCase {
    func testExamples() {
        let solution = Solution0334()
        XCTAssertEqual(solution.increasingTriplet([1, 2, 3, 4, 5]), true)
        XCTAssertEqual(solution.increasingTriplet([5, 4, 3, 2, 1]), false)
        XCTAssertEqual(solution.increasingTriplet([2, 1, 5, 0, 4, 6]), true)
    }
}
