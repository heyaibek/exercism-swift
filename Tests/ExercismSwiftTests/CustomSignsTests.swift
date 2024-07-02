@testable import ExercismSwift
import XCTest

class CustomSignsTests: XCTestCase {
	let t = CustomSigns()

	func testBirthday() {
		XCTAssertEqual(t.birthday, "Birthday")
	}

	func testValentine() {
		XCTAssertEqual(t.valentine, "Valentine's Day")
	}

	func testAnniversary() {
		XCTAssertEqual(t.anniversary, "Anniversary")
	}

	func testSpace() {
		XCTAssertEqual(t.space, " " as Character)
	}

	func testExclamation() {
		XCTAssertEqual(t.exclamation, "!" as Character)
	}

	func testBuildSign() {
		XCTAssertEqual(t.buildSign(for: t.valentine, name: "Hikaru"), "Happy Valentine's Day Hikaru!")
	}

	func testBuildSignNoName() {
		XCTAssertEqual(t.buildSign(for: t.birthday, name: ""), "Happy Birthday !")
	}

	func testBuildSignAnniversary() {
		XCTAssertEqual(t.buildSign(for: t.anniversary, name: "Bob"), "Happy Anniversary Bob!")
	}

	func testGraduation() {
		XCTAssertEqual(t.graduationFor(name: "Isabel", year: 1988), "Congratulations Isabel!\nClass of 1988")
	}

	func testGraduation2005() {
		XCTAssertEqual(t.graduationFor(name: "Jeremy", year: 2005), "Congratulations Jeremy!\nClass of 2005")
	}

	func testCostOfSign() {
		XCTAssertEqual(t.costOf(sign: t.graduationFor(name: "Isabel", year: 1988)), 94)
	}

	func testCostOfBuildSign() {
		XCTAssertEqual(t.costOf(sign: t.buildSign(for: t.anniversary, name: "Bob")), 64)
	}

	func testCostOfEmpty() {
		XCTAssertEqual(t.costOf(sign: ""), 20)
	}
}
