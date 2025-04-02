using System;

class Program {
    static int CountTrailingZeroes(int n) {
        int count = 0;
        while (n >= 5) {
            n /= 5;
            count += n;
        }
        return count;
    }

    static void Main() {
        Console.Write("Введите число: ");
        if (int.TryParse(Console.ReadLine(), out int number)) {
            Console.WriteLine($"Количество конечных нулей в факториале: {CountTrailingZeroes(number)}");
        } else {
            Console.WriteLine("Ошибка: введите корректное число!");
        }
    }
}