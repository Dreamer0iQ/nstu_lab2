import java.util.Scanner

fun countTrailingZeroes(n: Int): Int {
    var count = 0
    var current = n
    while (current >= 5) {
        current /= 5
        count += current
    }
    return count
}

fun main() {
    val scanner = Scanner(System.`in`)
    print("Введите число: ")
    val number = scanner.nextInt()
    println("Количество конечных нулей в факториале: ${countTrailingZeroes(number)}")
    scanner.close()
}