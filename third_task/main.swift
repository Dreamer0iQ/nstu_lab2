func isIncreasing(_ num: Int) -> Bool {
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

var numbers: [Int] = []
print("Введите числа, завершите ввод 0:")

while true {
    guard let input = readLine(), let num = Int(input) else { continue }
    if num == 0 { break }
    if Int(num/10) != 0 {
        numbers.append(num)   
    }
}

for num in numbers {
    if isIncreasing(num) {
        print("\(reverseNumber(num)) ", terminator: "")
    }
}