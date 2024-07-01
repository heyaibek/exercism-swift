@testable import ExercismSwift
import XCTest

class WingsQuestTests: XCTestCase {
	let t = WingsQuest()

	func testGetBonusPoints() {
		XCTAssertTrue(t.bonusPoints(powerUpActive: true, touchingEagle: true))
	}

	func testNoBonusPointsWhenNotPowerUpActive() {
		XCTAssertFalse(t.bonusPoints(powerUpActive: false, touchingEagle: true))
	}

	func testNoBonusPointsWhenNotTouchingOtherBird() {
		XCTAssertFalse(t.bonusPoints(powerUpActive: true, touchingEagle: false))
	}

	func testNoBonusPointsWhenNotTouchingOtherBirdNorPowerUpActive() {
		XCTAssertFalse(t.bonusPoints(powerUpActive: false, touchingEagle: false))
	}

	func testGetScore() {
		XCTAssertTrue(t.score(touchingPowerUp: true, touchingSeed: true))
	}

	func testGetScoreWhenNotTouchingSeed() {
		XCTAssertTrue(t.score(touchingPowerUp: false, touchingSeed: true))
	}

	func testGetScoreWhenNotTouchingPowerUp() {
		XCTAssertTrue(t.score(touchingPowerUp: true, touchingSeed: false))
	}

	func testNoScoreWhenBothIsFalse() {
		XCTAssertFalse(t.score(touchingPowerUp: false, touchingSeed: false))
	}

	func testLose() {
		XCTAssertTrue(t.lose(powerUpActive: false, touchingEagle: true))
	}

	func testDontLoseWhenPowerUpAcive() {
		XCTAssertFalse(t.lose(powerUpActive: true, touchingEagle: true))
	}

	func testDontLoseWhenPowerUpAciveAndTouchingEagle() {
		XCTAssertFalse(t.lose(powerUpActive: false, touchingEagle: false))
	}

	func testDontLoseWhenNotTouching() {
		XCTAssertFalse(t.lose(powerUpActive: true, touchingEagle: false))
	}

	func testWin() {
		XCTAssertTrue(t.win(hasPickedUpAllSeeds: true, powerUpActive: false, touchingEagle: false))
	}

	func testDontWinIfLost() {
		XCTAssertFalse(t.win(hasPickedUpAllSeeds: true, powerUpActive: false, touchingEagle: true))
	}

	func testWinIfPickedUpAllSeedsAndTouchingOtherBird() {
		XCTAssertFalse(t.win(hasPickedUpAllSeeds: true, powerUpActive: false, touchingEagle: true))
	}
}
