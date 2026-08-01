import XCTest
@testable import LeetCode

final class Solution1679Tests: XCTestCase {
    func testExamples() {
        let solution = Solution1679()
        XCTAssertEqual(solution.maxOperations([1, 2, 3, 4], 5), 2)
        XCTAssertEqual(solution.maxOperations([3, 1, 3, 4, 3], 6), 1)
    }

    func testNoValidPairs() {
        let solution = Solution1679()
        XCTAssertEqual(solution.maxOperations([1, 1, 1], 10), 0)
    }

    func testSingleElement() {
        let solution = Solution1679()
        XCTAssertEqual(solution.maxOperations([5], 5), 0)
    }

    func testAllElementsPairUp() {
        let solution = Solution1679()
        XCTAssertEqual(solution.maxOperations([1, 2, 3, 4, 5, 6], 7), 3)
    }

    func testDuplicateValuesSummingToK() {
        let solution = Solution1679()
        XCTAssertEqual(solution.maxOperations([3, 3, 3, 3], 6), 2)
    }

    func testLeftoverUnpairedElement() {
        let solution = Solution1679()
        XCTAssertEqual(solution.maxOperations([1, 2, 3], 4), 1)
    }

    func testLargeValues() {
        let solution = Solution1679()
        XCTAssertEqual(solution.maxOperations([1_000_000_000, 1_000_000_000], 2_000_000_000), 1)
    }
}
