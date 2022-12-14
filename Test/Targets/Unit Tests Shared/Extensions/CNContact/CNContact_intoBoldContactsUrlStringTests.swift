import XCTest
import Contacts
@testable import BoldContacts

final class CNContact_intoBoldContactsURL_swift_CNContact_intoBoldContactsURLTest: XCTestCase {

    func testLabelBoldContactsAndEmailAddress() throws {
        let contact = CNMutableContact()
        let emailAddress = "alice@example.com"
        contact.emailAddresses = [
            CNLabeledValue(
                label: "BoldContacts",
                value: emailAddress as NSString
            ),
        ]
        let actual = contact.intoBoldContactsURL()
        let expect = URL(string: "mailto://alice%40example.com")
        XCTAssertEqual(actual, expect)
    }

    func testLabelBoldContactsAndPhoneNumber() throws {
        let contact = CNMutableContact()
        let phoneNumber = "1 (800) 555-1111"
        contact.phoneNumbers = [
            CNLabeledValue(
                label: "BoldContacts",
                value: CNPhoneNumber(stringValue: phoneNumber)
            ),
        ]
        let actual = contact.intoBoldContactsURL()
        let expect = URL(string: "tel://18005551111")
        XCTAssertEqual(actual, expect)
    }

    func testLabelBoldContactsAndUrlAddress() throws {
        let contact = CNMutableContact()
        let urlAddress = "foo://example.com"
        contact.urlAddresses = [
            CNLabeledValue(
                label: "BoldContacts",
                value: urlAddress as NSString
            ),
        ]
        let actual = contact.intoBoldContactsURL()
        let expect = URL(string: "foo://example.com")
        XCTAssertEqual(actual, expect)
    }

    func testLabelFaceTimeAndEmailAddress() throws {
        let contact = CNMutableContact()
        let emailAddress = "alice@example.com"
        contact.emailAddresses = [
            CNLabeledValue(
                label: "FaceTime",
                value: emailAddress as NSString
            ),
        ]
        let actual = contact.intoBoldContactsURL()
        let expect = URL(string: "facetime://alice%40example.com")
        XCTAssertEqual(actual, expect)
    }

    func testLabelFaceTimeAndPhoneNumber() throws {
        let contact = CNMutableContact()
        let phoneNumber = "1 (800) 555-1111"
        contact.phoneNumbers = [
            CNLabeledValue(
                label: "FaceTime",
                value: CNPhoneNumber(stringValue: phoneNumber)
            ),
        ]
        let actual = contact.intoBoldContactsURL()
        let expect = URL(string: "facetime://18005551111")
        XCTAssertEqual(actual, expect)
    }

    func testLabelFaceTimeAndUrlAddress() throws {
        let contact = CNMutableContact()
        let urlAddress = "foo://example.com"
        contact.urlAddresses = [
            CNLabeledValue(
                label: "FaceTime",
                value: urlAddress as NSString
            ),
        ]
        let actual = contact.intoBoldContactsURL()
        let expect = URL(string: "foo://example.com")
        XCTAssertEqual(actual, expect)
    }

    func testLabelNilAndEmailAddress() throws {
        let contact = CNMutableContact()
        let emailAddress = "alice@example.com"
        contact.emailAddresses = [
            CNLabeledValue(
                label: nil,
                value: emailAddress as NSString
            ),
        ]
        let actual = contact.intoBoldContactsURL()
        let expect = URL(string: "mailto://alice%40example.com")
        XCTAssertEqual(actual, expect)
    }

    func testLabelNilAndPhoneNumber() throws {
        let contact = CNMutableContact()
        let phoneNumber = "1 (800) 555-1111"
        contact.phoneNumbers = [
            CNLabeledValue(
                label: nil,
                value: CNPhoneNumber(stringValue: phoneNumber)
            ),
        ]
        let actual = contact.intoBoldContactsURL()
        let expect = URL(string: "tel://18005551111")
        XCTAssertEqual(actual, expect)
    }

    func testLabelNilAndUrlAddress() throws {
        let contact = CNMutableContact()
        let urlAddress = "foo://example.com"
        contact.urlAddresses = [
            CNLabeledValue(
                label: nil,
                value: urlAddress as NSString
            ),
        ]
        let actual = contact.intoBoldContactsURL()
        let expect = URL(string: "foo://example.com")
        XCTAssertEqual(actual, expect)
    }

}
