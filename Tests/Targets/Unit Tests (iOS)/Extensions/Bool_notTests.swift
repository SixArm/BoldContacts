import XCTest

final class Bool_notTests: XCTestCase {

    func test() throws {
        XCTAssertTrue(false.not)
        XCTAssertFalse(true.not)
    }

}
