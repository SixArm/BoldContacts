import XCTest
import Contacts
@testable import BoldContacts

final class CNLabeledValue_labelEquivalentTest: XCTestCase {

    func test() throws {
        let lv = CNLabeledValue(label: "ALFA bravo", value: "Charlie Delta" as NSString) //
        XCTAssertTrue(lv.labelEquivalent(string: "alfa BRAVO"))
        XCTAssertFalse(lv.labelEquivalent(string: "echo foxtrot"))
    }

}
