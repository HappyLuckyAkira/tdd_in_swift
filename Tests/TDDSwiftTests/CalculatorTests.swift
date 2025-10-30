import XCTest
@testable import TDDSwift

final class CalculatorTests: XCTestCase {
    
    func testAddition() {
        // Given
        let a = 5
        let b = 3
        let expected = 8
        
        // When
        let result = Calculator.add(a, b)
        
        // Then
        XCTAssertEqual(result, expected, "Addition should return correct sum")
    }
    
    func testSubtraction() {
        // Given
        let a = 10
        let b = 4
        let expected = 6
        
        // When
        let result = Calculator.subtract(a, b)
        
        // Then
        XCTAssertEqual(result, expected, "Subtraction should return correct difference")
    }
    
    func testMultiplication() {
        // Given
        let a = 6
        let b = 7
        let expected = 42
        
        // When
        let result = Calculator.multiply(a, b)
        
        // Then
        XCTAssertEqual(result, expected, "Multiplication should return correct product")
    }
    
    func testDivision() throws {
        // Given
        let a = 15
        let b = 3
        let expected = 5.0
        
        // When
        let result = try Calculator.divide(a, b)
        
        // Then
        XCTAssertEqual(result, expected, accuracy: 0.001, "Division should return correct quotient")
    }
    
    func testDivisionByZero() {
        // Given
        let a = 10
        let b = 0
        
        // When & Then
        XCTAssertThrowsError(try Calculator.divide(a, b)) { error in
            XCTAssertTrue(error is CalculatorError, "Should throw CalculatorError")
            if let calculatorError = error as? CalculatorError {
                XCTAssertEqual(calculatorError, CalculatorError.divisionByZero, "Should throw divisionByZero error")
            }
        }
    }
    
    func testAdditionWithNegativeNumbers() {
        // Given
        let a = -5
        let b = 3
        let expected = -2
        
        // When
        let result = Calculator.add(a, b)
        
        // Then
        XCTAssertEqual(result, expected, "Addition with negative numbers should work correctly")
    }
    
    func testMultiplicationByZero() {
        // Given
        let a = 5
        let b = 0
        let expected = 0
        
        // When
        let result = Calculator.multiply(a, b)
        
        // Then
        XCTAssertEqual(result, expected, "Multiplication by zero should return zero")
    }
}