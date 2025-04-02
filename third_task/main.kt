fun isIncreasing(num: Int): Boolean {
    var n = num
    var prevDigit = 10
    while (n > 0) {
        val currentDigit = n % 10
        if (currentDigit >= prevDigit) {
            return false
        }
        prevDigit = currentDigit
        n /= 10
    }
    return true
}

fun reverseNumber(num: Int): Int {
    var n = num
    var reversed = 0
    while (n > 0) {
        reversed = reversed * 10 + n % 10
        n /= 10
    }
    return reversed
}

fun main() {
    val numbers = mutableListOf<Int>()
    println("Введите числа, завершите ввод 0:")
    
    while (true) {
        val num = readLine()!!.toInt()
        if (num == 0) break
        numbers.add(num)
    }
    
    for (num in numbers) {
        if (isIncreasing(num)) {
            print("${reverseNumber(num)} ")
        }
    }
}