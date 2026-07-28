import XCTest
@testable import LeetCode

final class Solution0238Tests: XCTestCase {
    func testExamples() {
        let solution = Solution0238()
        XCTAssertEqual(solution.productExceptSelf([1, 2, 3, 4]), [24, 12, 8, 6])
        XCTAssertEqual(solution.productExceptSelf([-1, 1, 0, -3, 3]), [0, 0, 9, 0, 0])
    }
}
