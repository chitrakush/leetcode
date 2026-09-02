import XCTest
@testable import LeetCode

final class Solution1004Tests: XCTestCase {
    func testExamples() {
        let solution = Solution1004()
        XCTAssertEqual(solution.longestOnes([1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 0], 2), 6)
        XCTAssertEqual(solution.longestOnes([0, 0, 1, 1, 0, 0, 1, 1, 1, 0, 1, 1, 0, 0, 0, 1, 1, 1, 1], 3), 10)
    }

    func testSingleZeroWithNoFlipsAllowed() {
        let solution = Solution1004()
        XCTAssertEqual(solution.longestOnes([0], 0), 0)
    }

    func testSingleZeroWithOneFlip() {
        let solution = Solution1004()
        XCTAssertEqual(solution.longestOnes([0], 1), 1)
    }

    func testSingleOne() {
        let solution = Solution1004()
        XCTAssertEqual(solution.longestOnes([1], 0), 1)
    }

    func testAllZerosNoFlipsAllowed() {
        let solution = Solution1004()
        XCTAssertEqual(solution.longestOnes([0, 0, 0, 0], 0), 0)
    }

    func testAllOnesNoFlipsNeeded() {
        let solution = Solution1004()
        XCTAssertEqual(solution.longestOnes([1, 1, 1, 1], 0), 4)
    }

    func testKCoversEntireArrayOfZeros() {
        let solution = Solution1004()
        XCTAssertEqual(solution.longestOnes([0, 0, 0, 0], 4), 4)
    }

    func testKExceedsNumberOfZeros() {
        let solution = Solution1004()
        XCTAssertEqual(solution.longestOnes([1, 0, 1, 0, 1], 10), 5)
    }

    func testZeroFlipsPicksLongestExistingRun() {
        let solution = Solution1004()
        XCTAssertEqual(solution.longestOnes([1, 1, 0, 1, 1, 1, 0, 1, 1], 0), 3)
    }

    func testFlipsAtTheStart() {
        let solution = Solution1004()
        XCTAssertEqual(solution.longestOnes([0, 0, 1, 1, 1], 2), 5)
    }

    func testFlipsAtTheEnd() {
        let solution = Solution1004()
        XCTAssertEqual(solution.longestOnes([1, 1, 1, 0, 0], 2), 5)
    }
}
