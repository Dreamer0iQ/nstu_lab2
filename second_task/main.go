package main

import (
	"fmt"
)

func romanToArabic(s string) int {
	romanToArabic := map[rune]int{
		'I': 1,
		'V': 5,
		'X': 10,
		'L': 50,
		'C': 100,
		'D': 500,
		'M': 1000,
	}

	sum := 0
	prev := 0

	for i := len(s) - 1; i >= 0; i-- {
		curr := romanToArabic[rune(s[i])]
		if curr < prev {
			sum -= curr
		} else {
			sum += curr
		}
		prev = curr
	}

	return sum
}

func main() {
	var input string
	fmt.Print("Enter Roman numeral: ")
	fmt.Scan(&input)
	fmt.Printf("%s -> %d\n", input, romanToArabic(input))
}
