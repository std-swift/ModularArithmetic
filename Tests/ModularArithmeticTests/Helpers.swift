//
//  Helpers.swift
//  ModularArithmetic
//

import ModularArithmetic

@inline(__always)
internal func printProgress<T: BinaryInteger & ModularOperations>(at value: T) {
	if value.modulo(50) == 0 {
		print("Progress: \(value)...")
	}
}
