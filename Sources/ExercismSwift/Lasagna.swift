struct Lasagna {
	let expectedMinutesInOven = 40
	let layerPreparationTime = 2

	func remainingMinutesInOven(elapsedMinutes: Int) -> Int {
		expectedMinutesInOven - elapsedMinutes
	}

	func preparationTimeInMinutes(layers: Int) -> Int {
		layers * layerPreparationTime
	}

	func totalTimeInMinutes(layers: Int, elapsedMinutes: Int) -> Int {
		preparationTimeInMinutes(layers: layers) + elapsedMinutes
	}
}
