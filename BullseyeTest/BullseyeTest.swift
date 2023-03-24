//
//  BullseyeTest.swift
//  BullseyeTest
//
//  Created by Shelton Brown on 3/23/23.
//

import XCTest
@testable import Bullseye

final class BullseyeTests: XCTestCase {
	var game: Game!

	override func setUpWithError() throws {
		game = Game()
	}

	override func tearDownWithError() throws {
		game = nil
	}

	func testScorePositive() {
		let guess = game.target + 5
		let score = game.points(sliderValue: guess)
		XCTAssertEqual(score, 95)
	}

	func testScoreNegative() {
		let guess = game.target - 5
		let score = game.points(sliderValue: guess)
		XCTAssertEqual(score, 95)
	}
}
