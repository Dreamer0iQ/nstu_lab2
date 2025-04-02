fun isIncreasing(num: Int): Boolean {
    if (num < 10) return false
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
    print("Введите количество чисел: ")
    val count = readLine()!!.toInt()

    println("Введите $count чисел:")
    var firstOutput = true

    for (i in 0 until count) {
        val num = readLine()!!.toInt()
        if (isIncreasing(num)) {
            if (!firstOutput) {
                print(" ")
            }
            print(reverseNumber(num))
            firstOutput = false
        }
    }
}