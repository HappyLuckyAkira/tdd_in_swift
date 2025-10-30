import TDDSwift

print("TDD Swift Calculator")
print("====================")

// Example usage
let sum = Calculator.add(5, 3)
print("5 + 3 = \(sum)")

let difference = Calculator.subtract(10, 4)
print("10 - 4 = \(difference)")

let product = Calculator.multiply(6, 7)
print("6 * 7 = \(product)")

do {
    let quotient = try Calculator.divide(15, 3)
    print("15 / 3 = \(quotient)")
} catch {
    print("Error: \(error.localizedDescription)")
}

// Test division by zero
do {
    let _ = try Calculator.divide(10, 0)
} catch {
    print("Error: \(error.localizedDescription)")
}