import XCTest
@testable import LeetCode

final class Solution1431Tests: XCTestCase {
    func testExamples() {
        let solution = Solution1431()
        XCTAssertEqual(solution.kidsWithCandies([2, 3, 5, 1, 3], 3), [true, true, true, false, true])
        XCTAssertEqual(solution.kidsWithCandies([4, 2, 1, 1, 2], 1), [true, false, false, false, false])
        XCTAssertEqual(solution.kidsWithCandies([12, 1, 12], 10), [true, false, true])
    }
}
