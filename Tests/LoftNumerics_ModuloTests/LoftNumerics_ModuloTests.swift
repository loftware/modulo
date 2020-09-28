import XCTest
@testable import LoftNumerics_Modulo

final class LoftNumerics_ModuloTests: XCTestCase {
    func testRemainderParity() {
        // Fuzz pairs of positive numbers to make sure that modulo is equivalent
        // to remainder for positive numbers.
        for a in 0...500 {
            for b in 1...500 {
                XCTAssertEqual(a.modulo(b), a % b)
            }
        }
    }

    func testNegativeInputs() {
        XCTAssertEqual((-1).modulo(5), 4)
        XCTAssertEqual((-1).modulo(3), 2)
        XCTAssertEqual((-1).modulo(5), 4)
        XCTAssertEqual((-2).modulo(5), 3)
        XCTAssertEqual((-3).modulo(5), 2)
        XCTAssertEqual((-4).modulo(5), 1)
        XCTAssertEqual((-5).modulo(5), 0)
        XCTAssertEqual((-6).modulo(5), 4)
        XCTAssertEqual(0.modulo(-3), 0)
        XCTAssertEqual((-3).modulo(-3), 0)
        XCTAssertEqual((-6).modulo(-3), 0)
    }

    static var allTests = [
        ("testRemainderParity", testRemainderParity),
        ("testNegativeInputs", testNegativeInputs),
    ]
}