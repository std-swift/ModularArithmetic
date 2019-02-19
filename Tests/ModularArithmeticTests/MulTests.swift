//
//  MulTests.swift
//  ModularArithmeticTests
//

import XCTest
import ModularArithmetic

final class MulTests: XCTestCase {
	func testExhaustiveInt8() {
		for a in Int8.min...Int8.max {
			printProgress(at: a)
			for b in Int8.min...Int8.max {
				for m in 1...Int8.max {
					XCTAssertEqual(Int(a.multiplying(b, modulo: m)), (Int(a) * Int(b)).modulo(Int(m)), "\(a) * \(b) mod \(m)")
				}
			}
		}
	}
	
	func testExhaustiveUInt8() {
		for a in UInt8.min...UInt8.max {
			printProgress(at: a)
			for b in UInt8.min...UInt8.max {
				for m in 1...UInt8.max {
					XCTAssertEqual(Int(a.multiplying(b, modulo: m)), (Int(a) * Int(b)).modulo(Int(m)), "\(a) * \(b) mod \(m)")
				}
			}
		}
	}
}
