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
	
	func testScoreExact() {
		let guess = game.target
		let score = game.points(sliderValue: guess)
		XCTAssertEqual(score, 200)
	}
	
	func testScoreClose() {
		let guess = game.target + 2
		let score = game.points(sliderValue: guess)
		XCTAssertEqual(score, 98 + 50)
	}
	
	func testNewRound () {
		game.startNewRound(points: 100)
		XCTAssertEqual(game.score, 100)
		XCTAssertEqual(game.round, 2)
	}
	
	func testRestart () {
		game.startNewRound(points: 100)
		XCTAssertNotEqual(game.score, 0)
		XCTAssertNotEqual(game.round, 1)
		game.restart()
		XCTAssertEqual(game.score, 0)
		XCTAssertEqual(game.round, 1)
	}
	
	func testLeaderboard() {
		game.startNewRound(points: 100)
		XCTAssertEqual(game.leaderbaordEntires.count, 1)
		XCTAssertEqual(game.leaderbaordEntires[0].score, 100)
		game.startNewRound(points: 200)
		XCTAssertEqual(game.leaderbaordEntires.count, 2)
		XCTAssertEqual(game.leaderbaordEntires[0].score, 200)
		XCTAssertEqual(game.leaderbaordEntires[1].score, 100)
	}
	
}
