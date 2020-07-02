import XCTest
@testable import TripleStep

final class TripleStepTests: XCTestCase {
    func testTripleStep() {
        let steps1 = 4
        XCTAssert(7 == Solution.tripleStep(steps1))
        XCTAssert(Solution.tripleStep(steps1) == Solution.badTripleStep(steps1))
        
        let steps2 = 5
        XCTAssert(13 == Solution.tripleStep(steps2))
        XCTAssert(Solution.tripleStep(steps2) == Solution.badTripleStep(steps2))
        
        let steps3 = 6
        XCTAssert(24 == Solution.tripleStep(steps3))
        XCTAssert(Solution.tripleStep(steps3) == Solution.badTripleStep(steps3))
        
        let steps4 = 20
        XCTAssert(Solution.tripleStep(steps4) == Solution.badTripleStep(steps4))
        
        let steps5 = 30
        XCTAssert(Solution.tripleStep(steps5) == Solution.badTripleStep(steps5))
        
        // Steps greater than 72 will cause overflow.
        print("[Debug] If 72 steps is provided, the result is \(Solution.tripleStep(72))\n")
        
    }

    static var allTests = [
        ("testTripleStep", testTripleStep),
    ]
}
