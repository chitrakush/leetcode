import XCTest
@testable import LeetCode

final class Solution0443Tests: XCTestCase {
    func testExamples() {
        let solution = Solution0443()

        var chars1: [Character] = ["a", "a", "b", "b", "c", "c", "c"]
        XCTAssertEqual(solution.compress(&chars1), 6)
        XCTAssertEqual(chars1, ["a", "2", "b", "2", "c", "3"])

        var chars2: [Character] = ["a"]
        XCTAssertEqual(solution.compress(&chars2), 1)
        XCTAssertEqual(chars2, ["a"])

        var chars3: [Character] = ["a", "b", "b", "b", "b", "b", "b", "b", "b", "b", "b", "b", "b"]
        XCTAssertEqual(solution.compress(&chars3), 4)
        XCTAssertEqual(chars3, ["a", "b", "1", "2"])
    }
}
