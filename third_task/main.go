package main

import (
	"fmt"
)

func isIncreasing(num int) bool {
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
	var numbers []int
	var num int
	fmt.Println("Введите числа, завершите ввод 0:")

	for {
		fmt.Scan(&num)
		if num == 0 {
			break
		}
		if (int(num / 10)) != 0 {
			numbers = append(numbers, num)
		}
	}

	for _, num := range numbers {
		if isIncreasing(num) {
			fmt.Printf("%d ", reverseNumber(num))
		}
	}
}
