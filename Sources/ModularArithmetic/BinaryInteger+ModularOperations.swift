//
//  BinaryInteger+ModularOperations.swift
//  ModularArithmetic
//

extension BinaryInteger where Self: ModularOperations {
	@inlinable
	public func exponentiating(by exponent: Self, modulo: Self) -> Self {
		precondition(modulo > 0, "modulus is not greater than zero")
		var lhs = self
		var rhs = exponent
		var r: Self = 1
		while rhs > 0 {
			if rhs & 1 == 1 {
				r = r.multiplying(lhs, modulo: modulo)
			}
			rhs = rhs >> 1
			lhs = lhs.multiplying(lhs, modulo: modulo)
		}
		return r.modulo(modulo)
	}
	
	@inlinable
	public func inverse(modulo: Self) -> Self? {
		precondition(modulo > 1, "modulus is not greater than one")
		var (s, old_s): (Self, Self) = (0, 1)
		var (t, old_t): (Self, Self) = (1, 0)
		var (r, old_r): (Self, Self) = (modulo, self)
		while r != 0 {
			let (quotient, _) = old_r.quotientAndRemainder(dividingBy: r)
			(old_r, r) = (r, old_r.subtracting(quotient.multiplying(r, modulo: modulo), modulo: modulo))
			(old_s, s) = (s, old_s.subtracting(quotient.multiplying(s, modulo: modulo), modulo: modulo))
			(old_t, t) = (t, old_t.subtracting(quotient.multiplying(t, modulo: modulo), modulo: modulo))
		}
		guard old_r == 1 else { return nil }
		return old_s
	}
}
