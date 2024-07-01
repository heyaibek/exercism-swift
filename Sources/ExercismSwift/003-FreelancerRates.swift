let dailyHours = 8.0
let monthlyWorkingDays = 22.0

func dailyRateFrom(hourlyRate: Int) -> Double {
		Double(hourlyRate) * dailyHours
}

func monthlyRateFrom(hourlyRate: Int, withDiscount discount: Double) -> Double {
		let monthlyRate = dailyRateFrom(hourlyRate: hourlyRate) * monthlyWorkingDays
		return discounted(monthlyRate, percent: discount).rounded()
}

func workdaysIn(budget: Double, hourlyRate: Int, withDiscount discount: Double) -> Double {
		let dailyRate = dailyRateFrom(hourlyRate: hourlyRate)
		let finalDailyRate = discounted(dailyRate, percent: discount)
		return (budget / finalDailyRate).rounded(.down)
}

func discounted(_ value: Double, percent: Double) -> Double {
		value - (value * (percent / 100))
}
