import XCTest
@testable import LeetCode

final class Solution1732Tests: XCTestCase {
    func testExamples() {
        let solution = Solution1732()
        XCTAssertEqual(solution.largestAltitude([-5, 1, 5, 0, -7]), 1)
        XCTAssertEqual(solution.largestAltitude([-4, -3, -2, -1, 4, 3, 2]), 0)
    }

    func testSingleElement() {
        let solution = Solution1732()
        XCTAssertEqual(solution.largestAltitude([5]), 5)
        XCTAssertEqual(solution.largestAltitude([-5]), 0)
        XCTAssertEqual(solution.largestAltitude([0]), 0)
    }

    func testAllZeros() {
        let solution = Solution1732()
        XCTAssertEqual(solution.largestAltitude([0, 0, 0]), 0)
    }

    func testAllNegativeStartingPointIsHighest() {
        let solution = Solution1732()
        // The starting altitude 0 counts, so the answer is never negative.
        XCTAssertEqual(solution.largestAltitude([-1, -2, -3]), 0)
    }

    func testAllPositivePeakAtEnd() {
        let solution = Solution1732()
        XCTAssertEqual(solution.largestAltitude([1, 2, 3]), 6)
        XCTAssertEqual(solution.largestAltitude([-10, 5, 5, 5, 5]), 10)
    }

    func testPeakInMiddle() {
        let solution = Solution1732()
        // Altitudes: 0, 3, 7, -3, -1
        XCTAssertEqual(solution.largestAltitude([3, 4, -10, 2]), 7)
    }

    func testRecoveryStaysBelowStart() {
        let solution = Solution1732()
        // Altitudes: 0, -10, -5, -1
        XCTAssertEqual(solution.largestAltitude([-10, 5, 4]), 0)
    }

    func testIsNotJustLargestGain() {
        let solution = Solution1732()
        // Largest single gain is 4, but the running total peaks at 8 (0, 2, 5, 4, 8, -2).
        XCTAssertEqual(solution.largestAltitude([2, 3, -1, 4, -10]), 8)
    }

    func testExtremeValues() {
        let solution = Solution1732()
        XCTAssertEqual(solution.largestAltitude(Array(repeating: 100, count: 100)), 10_000)
        XCTAssertEqual(solution.largestAltitude(Array(repeating: -100, count: 100)), 0)
        let upThenDown = Array(repeating: 100, count: 50) + Array(repeating: -100, count: 50)
        XCTAssertEqual(solution.largestAltitude(upThenDown), 5_000)
    }
}
