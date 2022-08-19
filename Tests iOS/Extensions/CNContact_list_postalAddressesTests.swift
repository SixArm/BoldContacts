import XCTest
import Contacts

class CNContact_list_postalAddressesTests: XCTestCase {

    override func setUpWithError() throws {
    }

    override func tearDownWithError() throws {
    }

    func test_hasPostalAddress_sans_index() throws {
        let contact = CNContact()
        let x = contact.hasPostalAddress()
        XCTAssertFalse(x)
    }

    func test_hasPostalAddress_with_index() throws {
        let contact = CNContact()
        let x = contact.hasPostalAddress(index: 1)
        XCTAssertFalse(x)
    }

    func test_getPostalAddress_sans_index() throws {
        let contact = CNContact()
        let x = contact.getPostalAddress()
        XCTAssertNil(x)
    }

    func test_getPostalAddress_with_index() throws {
        let contact = CNContact()
        let x = contact.getPostalAddress(index: 1)
        XCTAssertNil(x)
    }

    func test_getPostalAddressValue_sans_index() throws {
        let contact = CNContact()
        let x = contact.getPostalAddressValue()
        XCTAssertNil(x)
    }

    func test_getPostalAddressValue_with_index() throws {
        let contact = CNContact()
        let x = contact.getPostalAddressValue(index: 1)
        XCTAssertNil(x)
    }

    func testPerformanceExample() throws {
        self.measure {
        }
    }

}