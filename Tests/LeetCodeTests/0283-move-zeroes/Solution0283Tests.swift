import XCTest
@testable import LeetCode

final class Solution0283Tests: XCTestCase {
    func testExamples() {
        let solution = Solution0283()

        var nums1 = [0, 1, 0, 3, 12]
        solution.moveZeroes(&nums1)
        XCTAssertEqual(nums1, [1, 3, 12, 0, 0])

        var nums2 = [0]
        solution.moveZeroes(&nums2)
        XCTAssertEqual(nums2, [0])
    }
}
