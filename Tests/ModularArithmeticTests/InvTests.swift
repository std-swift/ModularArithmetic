//
//  InvTests.swift
//  ModularArithmeticTests
//

import XCTest
import ModularArithmetic

final class InvTests: XCTestCase {
	func testExhaustiveInt8() {
		for a in Int8.min...Int8.max {
			printProgress(at: a)
			for m in 2...Int8.max {
				if let r = a.inverse(modulo: m) {
					XCTAssertEqual(a.multiplying(r, modulo: m), 1, "\(a).inv(\(m))")
				}
			}
		}
	}
	
	func testExhaustiveUInt8() {
		for a in UInt8.min...UInt8.max {
			printProgress(at: a)
			for m in 2...UInt8.max {
				if let r = a.inverse(modulo: m) {
					XCTAssertEqual(a.multiplying(r, modulo: m), 1, "\(a).inv(\(m))")
				}
			}
		}
	}
}
