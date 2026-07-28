import XCTest
@testable import LeetCode

final class Solution0605Tests: XCTestCase {
    func testExamples() {
        let solution = Solution0605()
        XCTAssertEqual(solution.canPlaceFlowers([1, 0, 0, 0, 1], 1), true)
        XCTAssertEqual(solution.canPlaceFlowers([1, 0, 0, 0, 1], 2), false)
    }
}
