func isIncreasing(_ num: Int) -> Bool {
    if num < 10 { return false }
    var n = num
    var prevDigit = 10
    while n > 0 {
        let currentDigit = n % 10
        if currentDigit >= prevDigit {
            return false
        }
        prevDigit = currentDigit
        n /= 10
    }
    return true
}

func reverseNumber(_ num: Int) -> Int {
    var n = num
    var reversed = 0
    while n > 0 {
        reversed = reversed * 10 + n % 10
        n /= 10
    }
    return reversed
}

print("Введите количество чисел:")
guard let countInput = readLine(), let count = Int(countInput) else {
    fatalError("Ошибка ввода количества чисел")
}

print("Введите \(count) чисел:")
var firstOutput = true

for _ in 0..<count {
    guard let numInput = readLine(), let num = Int(numInput) else {
        continue
    }
    if isIncreasing(num) {
        if !firstOutput {
            print(" ", terminator: "")
        }
        print(reverseNumber(num), terminator: "")
        firstOutput = false
    }
}