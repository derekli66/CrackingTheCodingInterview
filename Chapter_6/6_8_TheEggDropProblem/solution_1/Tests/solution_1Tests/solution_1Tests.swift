import XCTest
@testable import solution_1

final class solution_1Tests: XCTestCase {
    func testOptimalSolution() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        
        var eggs = 2
        var floors = 36
        var result = eggDrops(eggs, floors)
        
        print("[TEST] Result: \(result)")
    }

    static var allTests = [
        ("testOptimalSolution", testOptimalSolution),
    ]
}
