import XCTest
@testable import IsUnique

final class IsUniqueTests: XCTestCase {

    private let testString1 = "Permutation"
    private let testString2 = "Sufficient"
    private let testString3 = "Given"
    private let testString4 = "Chapter"

    func testSolution1() {
        XCTAssert(Solution1.isUnique(testString1) == false)
        XCTAssert(Solution1.isUnique(testString2) == false)
        XCTAssert(Solution1.isUnique(testString3) == true)
        XCTAssert(Solution1.isUnique(testString4) == true)
    }

    func testSolution2() {
        XCTAssert(Solution2.isUnique(testString1) == false)
        XCTAssert(Solution2.isUnique(testString2) == false)
        XCTAssert(Solution2.isUnique(testString3) == true)
        XCTAssert(Solution2.isUnique(testString4) == true)
    }

    func testSolution3() {
        XCTAssert(Solution2.isUnique(testString1.lowercased()) == false)
        XCTAssert(Solution2.isUnique(testString2.lowercased()) == false)
        XCTAssert(Solution2.isUnique(testString3.lowercased()) == true)
        XCTAssert(Solution2.isUnique(testString4.lowercased()) == true)
    }

    func testCharacters() {
        let charA = Character("A")
        let charArray = Array("ABCD")
        let result = charArray[1].asciiValue! - charA.asciiValue!
        debugPrint("[Debug] result: \(result)")
        XCTAssert(charA == charArray[0])
    }

    static var allTests = [
        ("testSolution1", testSolution1),
        ("testSolution2", testSolution2),
        ("testSolution3", testSolution3),
        ("testCharacters", testCharacters)
    ]
}
