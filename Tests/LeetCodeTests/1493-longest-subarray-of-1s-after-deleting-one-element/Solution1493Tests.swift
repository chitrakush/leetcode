import XCTest
@testable import LeetCode

final class Solution1493Tests: XCTestCase {
    func testExamples() {
        let solution = Solution1493()
        XCTAssertEqual(solution.longestSubarray([1, 1, 0, 1]), 3)
        XCTAssertEqual(solution.longestSubarray([0, 1, 1, 1, 0, 1, 1, 0, 1]), 5)
        XCTAssertEqual(solution.longestSubarray([1, 1, 1]), 2)
    }

    func testSingleElement() {
        let solution = Solution1493()
        XCTAssertEqual(solution.longestSubarray([1]), 0)
        XCTAssertEqual(solution.longestSubarray([0]), 0)
    }

    func testTwoElements() {
        let solution = Solution1493()
        XCTAssertEqual(solution.longestSubarray([1, 1]), 1)
        XCTAssertEqual(solution.longestSubarray([1, 0]), 1)
        XCTAssertEqual(solution.longestSubarray([0, 1]), 1)
        XCTAssertEqual(solution.longestSubarray([0, 0]), 0)
    }

    func testAllZeros() {
        let solution = Solution1493()
        XCTAssertEqual(solution.longestSubarray([0, 0, 0, 0]), 0)
    }

    func testAllOnesMustStillDelete() {
        let solution = Solution1493()
        XCTAssertEqual(solution.longestSubarray([1, 1, 1, 1, 1]), 4)
    }

    func testZeroAtEdges() {
        let solution = Solution1493()
        XCTAssertEqual(solution.longestSubarray([0, 1, 1, 1]), 3)
        XCTAssertEqual(solution.longestSubarray([1, 1, 1, 0]), 3)
        XCTAssertEqual(solution.longestSubarray([0, 1, 1, 0]), 2)
    }

    func testConsecutiveZerosBreakTheRun() {
        let solution = Solution1493()
        // Deleting one zero can't bridge a gap of two zeros.
        XCTAssertEqual(solution.longestSubarray([1, 1, 0, 0, 1, 1, 1]), 3)
        XCTAssertEqual(solution.longestSubarray([1, 0, 0, 1]), 1)
    }

    func testBestBridgeIsNotFirst() {
        let solution = Solution1493()
        XCTAssertEqual(solution.longestSubarray([1, 0, 1, 0, 1, 1, 1, 0, 1, 1]), 5)
        XCTAssertEqual(solution.longestSubarray([1, 0, 1, 1, 0, 1]), 3)
    }

    func testAlternating() {
        let solution = Solution1493()
        XCTAssertEqual(solution.longestSubarray([1, 0, 1, 0, 1, 0, 1]), 2)
        XCTAssertEqual(solution.longestSubarray([0, 1, 0, 1, 0]), 2)
    }

    func testLargeInput() {
        let solution = Solution1493()
        let allOnes = Array(repeating: 1, count: 100_000)
        XCTAssertEqual(solution.longestSubarray(allOnes), 99_999)

        var oneZeroInMiddle = Array(repeating: 1, count: 100_000)
        oneZeroInMiddle[50_000] = 0
        XCTAssertEqual(solution.longestSubarray(oneZeroInMiddle), 99_999)
    }
}
