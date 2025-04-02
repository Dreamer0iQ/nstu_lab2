import Foundation

func countTrailingZeroes(_ n: Int) -> Int {
    var count = 0
    var current = n
    while current >= 5 {
        current /= 5
        count += current
    }
    return count
}

print("Введите число: ", terminator: "")
if let input = readLine(), let number = Int(input) {
    print("Количество конечных нулей в факториале: \(countTrailingZeroes(number))")
} else {
    print("Ошибка: введите корректное число!")
}