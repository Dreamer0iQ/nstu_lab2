fun romanToArabic(s: String): Int {
    val romanToArabic = mapOf(
        'I' to 1, 'V' to 5, 'X' to 10, 'L' to 50,
        'C' to 100, 'D' to 500, 'M' to 1000
    )
    
    var sum = 0
    var prev = 0
    
    for (i in s.length - 1 downTo 0) {
        val curr = romanToArabic[s[i]] ?: 0
        if (curr < prev) sum -= curr else sum += curr
        prev = curr
    }
    return sum
}

fun main() {
    print("Enter Roman numeral: ")
    val input = readLine()!!
    println("$input -> ${romanToArabic(input)}")
}