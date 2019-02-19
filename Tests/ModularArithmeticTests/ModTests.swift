//
//  ModuloTests.swift
//  ModularArithmeticTests
//

import XCTest
import ModularArithmetic

final class ModTests: XCTestCase {
	func testExhaustiveInt8() {
		for a in Int8.min...Int8.max {
			printProgress(at: a)
			for m in 1...Int8.max {
				if a < 0 {
					XCTAssertEqual(a.modulo(m), ((a % m) + m) % m, "\(a) mod \(m)")
				} else {
					XCTAssertEqual(a.modulo(m), a % m, "\(a) mod \(m)")
				}
			}
		}
	}
	
	func testExhaustiveUInt8() {
		for a in UInt8.min...UInt8.max {
			printProgress(at: a)
			for m in 1...UInt8.max {
				XCTAssertEqual(a.modulo(m), a % m, "\(a) mod \(m)")
			}
		}
	}
}
