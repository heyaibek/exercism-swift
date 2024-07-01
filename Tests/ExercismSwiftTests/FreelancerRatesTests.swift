@testable import ExercismSwift
import XCTest

class FreelancerRatesTests: XCTestCase {
	let t = FreelancerRates()

	func testDailyRateFromFor60() {
		XCTAssertEqual(t.dailyRateFrom(hourlyRate: 60), 480.0, accuracy: 0.001)
	}

	func testDailyRateFromFor16() {
		XCTAssertEqual(t.dailyRateFrom(hourlyRate: 16), 128.0, accuracy: 0.001)
	}

	func testDailyRateFromFor25() {
		XCTAssertEqual(t.dailyRateFrom(hourlyRate: 25), 200.0, accuracy: 0.001)
	}

	func testMonthlyWithWholeResult() {
		XCTAssertEqual(t.monthlyRateFrom(hourlyRate: 80, withDiscount: 50), 7040, accuracy: 0.001)
	}

	func testMonthlyRoundDown() {
		XCTAssertEqual(t.monthlyRateFrom(hourlyRate: 77, withDiscount: 10.5), 12129, accuracy: 0.001)
	}

	func testMonthlyRoundUp() {
		XCTAssertEqual(t.monthlyRateFrom(hourlyRate: 80, withDiscount: 10.5), 12602, accuracy: 0.001)
	}

	func testWorkDaysInSmallBudget() {
		XCTAssertEqual(t.workdaysIn(budget: 1000, hourlyRate: 50, withDiscount: 10), 2.0, accuracy: 0.001)
	}

	func testWorkDaysInMediumBudget() {
		XCTAssertEqual(t.workdaysIn(budget: 5000, hourlyRate: 60, withDiscount: 10), 11.0, accuracy: 0.001)
	}

	func testWorkDaysInLargeBudget() {
		XCTAssertEqual(t.workdaysIn(budget: 25000, hourlyRate: 80, withDiscount: 10), 43.0, accuracy: 0.001)
	}

	func testWorkDaysShouldRound() {
		XCTAssertEqual(t.workdaysIn(budget: 20000, hourlyRate: 80, withDiscount: 11), 35.0, accuracy: 0.001)
	}

	func testWorkDaysShouldNotRoundToNearestInteger() {
		XCTAssertEqual(t.workdaysIn(budget: 25000, hourlyRate: 80, withDiscount: 11), 43.0, accuracy: 0.001)
	}
}
