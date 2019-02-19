// swift-tools-version:5.0
//
//  Package.swift
//  ModularArithmetic
//

import PackageDescription

let package = Package(
	name: "ModularArithmetic",
	products: [
		.library(
			name: "ModularArithmetic",
			targets: ["ModularArithmetic"]),
	],
	targets: [
		.target(
			name: "ModularArithmetic",
			dependencies: []),
		.testTarget(
			name: "ModularArithmeticTests",
			dependencies: ["ModularArithmetic"]),
	]
)
