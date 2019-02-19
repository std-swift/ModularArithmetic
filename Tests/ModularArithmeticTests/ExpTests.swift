//
//  ExpTests.swift
//  ModularArithmeticTests
//

import XCTest
import ModularArithmetic

final class ExpTests: XCTestCase {
	func testEdgeInt8() {
		// Test around the edge to ensure there is no crash
		let edges = [
			Int8.min, Int8.min+1, Int8.min+2, Int8.min+3,
			Int8.max-3, Int8.max-2, Int8.max-1, Int8.max
		]
		for a in edges {
			for b in edges {
				for m in 1...Int8.max {
					_ = a.exponentiating(by: b, modulo: m)
				}
			}
		}
	}
	
	func testSelectInt8() {
		XCTAssertEqual(Int8(66).exponentiating(by: 22, modulo: 88), 0)
		XCTAssertEqual(Int8(46).exponentiating(by: 114, modulo: 120), 16)
		XCTAssertEqual(Int8(112).exponentiating(by: 22, modulo: 45), 4)
		XCTAssertEqual(Int8(-54).exponentiating(by: 80, modulo: 78), 48)
		XCTAssertEqual(Int8(112).exponentiating(by: -83, modulo: 37), 1)
		XCTAssertEqual(Int8(79).exponentiating(by: -116, modulo: 94), 1)
		XCTAssertEqual(Int8(-96).exponentiating(by: -5, modulo: 94), 1)
		XCTAssertEqual(Int8(72).exponentiating(by: 117, modulo: 21), 15)
		XCTAssertEqual(Int8(20).exponentiating(by: -102, modulo: 99), 1)
		XCTAssertEqual(Int8(-55).exponentiating(by: 14, modulo: 5), 0)
	}
	
	func testEdgeUInt8() {
		// Test around the edge to ensure there is no crash
		let edges = [
			UInt8.min, UInt8.min+1, UInt8.min+2, UInt8.min+3,
			UInt8.max-3, UInt8.max-2, UInt8.max-1, UInt8.max
		]
		for a in edges {
			for b in edges {
				for m in 1...UInt8.max {
					_ = a.exponentiating(by: b, modulo: m)
				}
			}
		}
	}
	
	func testSelectUInt8() {
		XCTAssertEqual(UInt8(250).exponentiating(by: 211, modulo: 112), 96)
		XCTAssertEqual(UInt8(212).exponentiating(by: 173, modulo: 35), 32)
		XCTAssertEqual(UInt8(23).exponentiating(by: 237, modulo: 46), 23)
		XCTAssertEqual(UInt8(232).exponentiating(by: 206, modulo: 240), 64)
		XCTAssertEqual(UInt8(80).exponentiating(by: 179, modulo: 210), 110)
		XCTAssertEqual(UInt8(3).exponentiating(by: 132, modulo: 87), 54)
		XCTAssertEqual(UInt8(219).exponentiating(by: 144, modulo: 107), 35)
		XCTAssertEqual(UInt8(104).exponentiating(by: 194, modulo: 129), 67)
		XCTAssertEqual(UInt8(234).exponentiating(by: 71, modulo: 146), 112)
		XCTAssertEqual(UInt8(220).exponentiating(by: 243, modulo: 188), 144)
	}
}
