@testable import ExercismSwift
import XCTest

final class LasagnaTests: XCTestCase {
	let lasagna = Lasagna()

	func testExpectedMinutes() {
		XCTAssertEqual(lasagna.expectedMinutesInOven, 40)
	}

	func testRemainingMinutes() {
		XCTAssertEqual(lasagna.remainingMinutesInOven(elapsedMinutes: 13), 27)
	}

	func testRemainingMinutesWhenDone() {
		XCTAssertEqual(lasagna.remainingMinutesInOven(elapsedMinutes: 40), 0)
	}

	func testRemainingMinutesWhenLessThanOne() {
		XCTAssertEqual(lasagna.remainingMinutesInOven(elapsedMinutes: 39), 1)
	}

	func testPreparationMinutes() {
		XCTAssertEqual(lasagna.preparationTimeInMinutes(layers: 6), 12)
	}

	func testPreparationMinutesForOneLayer() {
		XCTAssertEqual(lasagna.preparationTimeInMinutes(layers: 1), 2)
	}

	func testPreparationMinutesForZeroLayers() {
		XCTAssertEqual(lasagna.preparationTimeInMinutes(layers: 0), 0)
	}

	func testTotalMinutes() {
		XCTAssertEqual(lasagna.totalTimeInMinutes(layers: 1, elapsedMinutes: 30), 32)
	}

	func testTotalMinutesWhenDone() {
		XCTAssertEqual(lasagna.totalTimeInMinutes(layers: 2, elapsedMinutes: 25), 29)
	}

	func testTotalMinutesWhenLessThanOne() {
		XCTAssertEqual(lasagna.totalTimeInMinutes(layers: 4, elapsedMinutes: 8), 16)
	}
}
