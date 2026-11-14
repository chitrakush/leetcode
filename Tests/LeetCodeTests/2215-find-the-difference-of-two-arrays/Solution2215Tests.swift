import XCTest
@testable import LeetCode

final class Solution2215Tests: XCTestCase {
    // Order within each list doesn't matter, so sort both lists before comparing.
    private func normalized(_ result: [[Int]]) -> [[Int]] {
        result.map { $0.sorted() }
    }

    func testExamples() {
        let solution = Solution2215()
        XCTAssertEqual(normalized(solution.findDifference([1, 2, 3], [2, 4, 6])), [[1, 3], [4, 6]])
        XCTAssertEqual(normalized(solution.findDifference([1, 2, 3, 3], [1, 1, 2, 2])), [[3], []])
    }

    func testResultAlwaysHasTwoLists() {
        let solution = Solution2215()
        XCTAssertEqual(solution.findDifference([1], [1]).count, 2)
    }

    func testIdenticalArraysGiveEmptyLists() {
        let solution = Solution2215()
        XCTAssertEqual(normalized(solution.findDifference([1, 2, 3], [3, 2, 1])), [[], []])
    }

    func testSingleElementEach() {
        let solution = Solution2215()
        XCTAssertEqual(normalized(solution.findDifference([1], [1])), [[], []])
        XCTAssertEqual(normalized(solution.findDifference([1], [2])), [[1], [2]])
    }

    func testCompletelyDisjoint() {
        let solution = Solution2215()
        XCTAssertEqual(normalized(solution.findDifference([1, 2], [3, 4])), [[1, 2], [3, 4]])
    }

    func testDuplicatesAppearOnlyOnce() {
        let solution = Solution2215()
        XCTAssertEqual(normalized(solution.findDifference([5, 5, 5, 7], [7, 7])), [[5], []])
        XCTAssertEqual(normalized(solution.findDifference([4, 4], [9, 9, 9])), [[4], [9]])
    }

    func testOneSideIsSubsetOfOther() {
        let solution = Solution2215()
        XCTAssertEqual(normalized(solution.findDifference([1, 2], [1, 2, 3, 4])), [[], [3, 4]])
    }

    func testDifferentLengths() {
        let solution = Solution2215()
        XCTAssertEqual(normalized(solution.findDifference([1, 2, 3, 4, 5], [5])), [[1, 2, 3, 4], []])
    }

    func testNegativesZeroAndBoundaryValues() {
        let solution = Solution2215()
        XCTAssertEqual(
            normalized(solution.findDifference([-1000, 0, 1000], [0, -1])),
            [[-1000, 1000], [-1]]
        )
        XCTAssertEqual(normalized(solution.findDifference([-3, 3], [3])), [[-3], []])
    }

    func testLargeInput() {
        let solution = Solution2215()
        let nums1 = Array(0..<1000)            // 0...999
        let nums2 = Array(500..<1500).map { $0 - 1000 } // -500...499
        XCTAssertEqual(
            normalized(solution.findDifference(nums1, nums2)),
            [Array(500..<1000), Array(-500..<0)]
        )
    }
}
