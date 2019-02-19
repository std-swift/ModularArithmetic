//
//  BinaryInteger+Modulo.swift
//  ModularArithmetic
//

extension BinaryInteger {
	@inlinable
	public func modulo(_ modulo: Self) -> Self {
		precondition(modulo > 0, "modulus is not greater than zero")
		let remainder = self % modulo
		return remainder >= 0 ? remainder : remainder + modulo
	}
}

extension UnsignedInteger {
	@inlinable
	public func modulo(_ modulo: Self) -> Self {
		precondition(modulo > 0, "modulus is not greater than zero")
		return self % modulo
	}
}
