import Foundation

/// A simple calculator for demonstrating TDD in Swift
public struct Calculator {
    
    /// Adds two numbers together
    /// - Parameters:
    ///   - a: First number
    ///   - b: Second number
    /// - Returns: Sum of a and b
    public static func add(_ a: Int, _ b: Int) -> Int {
        return a + b
    }
    
    /// Subtracts second number from first number
    /// - Parameters:
    ///   - a: First number
    ///   - b: Second number
    /// - Returns: Difference of a and b
    public static func subtract(_ a: Int, _ b: Int) -> Int {
        return a - b
    }
    
    /// Multiplies two numbers
    /// - Parameters:
    ///   - a: First number
    ///   - b: Second number
    /// - Returns: Product of a and b
    public static func multiply(_ a: Int, _ b: Int) -> Int {
        return a * b
    }
    
    /// Divides first number by second number
    /// - Parameters:
    ///   - a: Dividend
    ///   - b: Divisor
    /// - Returns: Quotient of a and b
    /// - Throws: CalculatorError.divisionByZero if b is zero
    public static func divide(_ a: Int, _ b: Int) throws -> Double {
        guard b != 0 else {
            throw CalculatorError.divisionByZero
        }
        return Double(a) / Double(b)
    }
}

public enum CalculatorError: Error {
    case divisionByZero
}

extension CalculatorError: LocalizedError {
    public var errorDescription: String? {
        switch self {
        case .divisionByZero:
            return "Cannot divide by zero"
        }
    }
}