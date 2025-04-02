using System;
using System.Collections.Generic;

class Program
{
    static bool IsIncreasing(int num)
    {
        int prevDigit = 10;
        while (num > 0)
        {
            int currentDigit = num % 10;
            if (currentDigit >= prevDigit)
                return false;
            prevDigit = currentDigit;
            num /= 10;
        }
        return true;
    }

    static int ReverseNumber(int num)
    {
        int reversed = 0;
        while (num > 0)
        {
            reversed = reversed * 10 + num % 10;
            num /= 10;
        }
        return reversed;
    }

    static void Main()
    {
        List<int> numbers = new List<int>();
        Console.WriteLine("Введите числа, завершите ввод 0:");

        while (true)
        {
            string input = Console.ReadLine();
            if (int.TryParse(input, out int num))
            {
                if (num == 0)
                    break;
                numbers.Add(num);
            }
        }

        Console.Write("Результат: ");
        foreach (int num in numbers)
        {
            if (IsIncreasing(num))
                Console.Write(ReverseNumber(num) + " ");
        }
    }
}