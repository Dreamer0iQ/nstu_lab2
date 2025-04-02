using System;

class Program
{
    static bool IsIncreasing(int num)
    {
        if (num < 10) return false;
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
        Console.Write("Введите количество чисел: ");
        int count = int.Parse(Console.ReadLine());

        Console.WriteLine($"Введите {count} чисел:");
        bool firstOutput = true;

        for (int i = 0; i < count; i++)
        {
            int num = int.Parse(Console.ReadLine());
            if (IsIncreasing(num))
            {
                if (!firstOutput)
                    Console.Write(" ");
                Console.Write(ReverseNumber(num));
                firstOutput = false;
            }
        }
    }
}