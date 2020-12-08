import XCTest
@testable import SortedMerge

final class SortedMergeTests: XCTestCase {
    func testSortedMerge() {
        var arrayA: [Int] = [1, 3, 5, 7, 100, Int.max, Int.max, Int.max]
        let arrayB: [Int] = [2, 4, 6];
        
        let newArrayCount = Solution().sortedMerge(first: &arrayA, elementCount: 5, second: arrayB)
        
        XCTAssert(newArrayCount == 8)
        
        var lastItem = Int.min
        for item in arrayA {
            XCTAssert(lastItem < item)
            lastItem = item
        }
    }

    static var allTests = [
        ("testSortedMerge", testSortedMerge),
    ]
}
