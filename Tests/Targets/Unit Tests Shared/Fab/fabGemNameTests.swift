import XCTest
@testable import BoldContacts

class fabGemNameTests: XCTestCase {

    func test() throws {
        let x: String = fabGemName()
        XCTAssert(!x.isEmpty)
    }

}