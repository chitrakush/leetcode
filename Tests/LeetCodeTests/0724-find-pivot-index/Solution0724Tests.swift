import XCTest
@testable import LeetCode

final class Solution0724Tests: XCTestCase {
    func testExamples() {
        let solution = Solution0724()
        XCTAssertEqual(solution.pivotIndex([1, 7, 3, 6, 5, 6]), 3)
        XCTAssertEqual(solution.pivotIndex([1, 2, 3]), -1)
        XCTAssertEqual(solution.pivotIndex([2, 1, -1]), 0)
    }

    func testSingleElementIsAlwaysPivot() {
        let solution = Solution0724()
        // Both sides are empty, so both sum to 0.
        XCTAssertEqual(solution.pivotIndex([5]), 0)
        XCTAssertEqual(solution.pivotIndex([0]), 0)
        XCTAssertEqual(solution.pivotIndex([-3]), 0)
    }

    func testTwoElements() {
        let solution = Solution0724()
        XCTAssertEqual(solution.pivotIndex([1, 0]), 0)
        XCTAssertEqual(solution.pivotIndex([0, 1]), 1)
        XCTAssertEqual(solution.pivotIndex([1, 2]), -1)
    }

    func testPivotAtLastIndex() {
        let solution = Solution0724()
        // Left of index 2 is -1 + 1 = 0; right is empty.
        XCTAssertEqual(solution.pivotIndex([-1, 1, 7]), 2)
    }

    func testReturnsLeftmostPivot() {
        let solution = Solution0724()
        XCTAssertEqual(solution.pivotIndex([0, 0, 0]), 0)
        // Indices 1 and 2 are both pivots.
        XCTAssertEqual(solution.pivotIndex([2, 0, 0, 2]), 1)
    }

    func testAllEqualValues() {
        let solution = Solution0724()
        XCTAssertEqual(solution.pivotIndex([1, 1, 1]), 1)
        XCTAssertEqual(solution.pivotIndex([1, 1, 1, 1]), -1)
    }

    func testNegativeNumbers() {
        let solution = Solution0724()
        // Index 2: left = -2, right = -1 + -1 + 0 = -2
        XCTAssertEqual(solution.pivotIndex([-1, -1, -1, -1, -1, 0]), 2)
        XCTAssertEqual(solution.pivotIndex([-1, -2, -3]), -1)
    }

    func testPivotValueIsExcludedFromBothSides() {
        let solution = Solution0724()
        // Including nums[i] on either side would give the wrong answer.
        XCTAssertEqual(solution.pivotIndex([1, 100, 1]), 1)
    }

    func testLargeInput() {
        let solution = Solution0724()
        // 9,999 copies of 1000: the middle index 4999 has 4999 elements on each side.
        XCTAssertEqual(solution.pivotIndex(Array(repeating: 1000, count: 9_999)), 4_999)
        // 10,000 copies: even length, no index splits it evenly.
        XCTAssertEqual(solution.pivotIndex(Array(repeating: 1000, count: 10_000)), -1)
        // Alternating -1000, 1000 (total 0): the left sum is always 0 or -1000,
        // and it never equals the right sum, so there is no pivot.
        let alternating = (0..<10_000).map { $0 % 2 == 0 ? -1000 : 1000 }
        XCTAssertEqual(solution.pivotIndex(alternating), -1)
    }
}
