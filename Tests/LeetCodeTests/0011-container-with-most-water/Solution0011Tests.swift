import XCTest
@testable import LeetCode

final class Solution0011Tests: XCTestCase {
    func testExamples() {
        let solution = Solution0011()
        XCTAssertEqual(solution.maxArea([1, 8, 6, 2, 5, 4, 8, 3, 7]), 49)
        XCTAssertEqual(solution.maxArea([1, 1]), 1)
    }

    func testMinimumLength() {
        let solution = Solution0011()
        XCTAssertEqual(solution.maxArea([1, 2]), 1)
    }

    func testAllEqualHeights() {
        let solution = Solution0011()
        XCTAssertEqual(solution.maxArea([4, 4, 4, 4]), 12)
    }

    func testZeroHeights() {
        let solution = Solution0011()
        XCTAssertEqual(solution.maxArea([0, 0]), 0)
        XCTAssertEqual(solution.maxArea([0, 2, 0]), 0)
    }

    func testDescendingThenAscending() {
        let solution = Solution0011()
        XCTAssertEqual(solution.maxArea([5, 4, 3, 2, 1, 5]), 25)
    }
}
