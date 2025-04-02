package main

import "fmt"

func countTrailingZeroes(n int) int {
	count := 0
	for n >= 5 {
		n /= 5
		count += n
	}
	return count
}

func main() {
	var number int
	fmt.Print("Введите число: ")
	fmt.Scan(&number)
	fmt.Printf("Количество конечных нулей в факториале: %d\n", countTrailingZeroes(number))
}
