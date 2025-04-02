package main

import "fmt"

func isIncreasing(num int) bool {
	if num < 10 {
		return false
	}
	prevDigit := 10
	for num > 0 {
		currentDigit := num % 10
		if currentDigit >= prevDigit {
			return false
		}
		prevDigit = currentDigit
		num /= 10
	}
	return true
}

func reverseNumber(num int) int {
	reversed := 0
	for num > 0 {
		reversed = reversed*10 + num%10
		num /= 10
	}
	return reversed
}

func main() {
	var count int
	fmt.Print("Введите количество чисел: ")
	fmt.Scan(&count)

	fmt.Printf("Введите %d чисел:\n", count)
	firstOutput := true

	for i := 0; i < count; i++ {
		var num int
		fmt.Scan(&num)
		if isIncreasing(num) {
			if !firstOutput {
				fmt.Print(" ")
			}
			fmt.Print(reverseNumber(num))
			firstOutput = false
		}
	}
}
