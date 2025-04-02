func romanToArabic(_ s: String) -> Int {
    let romanToArabic: [Character: Int] = [
        "I": 1, "V": 5, "X": 10, "L": 50,
        "C": 100, "D": 500, "M": 1000
    ]
    
    var sum = 0
    var prev = 0
    
    for char in s.reversed() {
        let curr = romanToArabic[char] ?? 0
        sum += curr < prev ? -curr : curr
        prev = curr
    }
    
    return sum
}

// Ввод с клавиатуры
print("Введите римское число: ", terminator: "")
if let input = readLine() {
    print("\(input) -> \(romanToArabic(input))")
} else {
    print("Ошибка ввода")
}