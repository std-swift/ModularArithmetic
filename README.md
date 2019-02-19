# ModularArithmetic

[![](https://img.shields.io/badge/Swift-5.0-orange.svg)][1]
[![](https://img.shields.io/badge/os-macOS%20|%20Linux-lightgray.svg)][1]
[![](https://travis-ci.com/std-swift/ModularArithmetic.svg?branch=master)][2]
[![](https://codecov.io/gh/std-swift/ModularArithmetic/branch/master/graph/badge.svg)][3]
[![](https://codebeat.co/badges/16144821-7db7-4da9-a3ec-97b62814230e)][4]

[1]: https://swift.org/download/#releases
[2]: https://travis-ci.com/std-swift/ModularArithmetic
[3]: https://codecov.io/gh/std-swift/ModularArithmetic
[4]: https://codebeat.co/projects/github-com-std-swift-modulararithmetic-master

Modular arithmetic in Swift

## Importing

```Swift
import ModularArithmetic
```

```Swift
dependencies: [
	.package(url: "https://github.com/std-swift/ModularArithmetic.git",
	         from: "1.0.0")
],
targets: [
	.target(
		name: "",
		dependencies: [
			"ModularArithmetic"
		]),
]
```

## Using

### `ModularOperations`

Declares modular arithmetic operations:

```Swift
func modulo(_ modulo: Self) -> Self
func adding(_ other: Self, modulo: Self) -> Self
func subtracting(_ other: Self, modulo: Self) -> Self
func multiplying(_ other: Self, modulo: Self) -> Self
func exponentiating(by exponent: Self, modulo: Self) -> Self
func inverse(modulo: Self) -> Self?
```

Default implementations:

- `modulo` -> `BinaryInteger`, `UnsignedInteger`
- `adding` -> `FixedWidthInteger`
- `subtracting` -> `FixedWidthInteger`
- `multiplying` -> `FixedWidthInteger`
- `exponentiating` -> `BinaryInteger`
- `inverse` -> `BinaryInteger`

`(U)Int(8|16|32|64)` all conform.
