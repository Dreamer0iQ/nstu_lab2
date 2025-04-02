using System;
using System.Collections.Generic;

class Program
{
    static int RomanToArabic(string s)
    {
        var romanToArabic = new Dictionary<char, int>
        {
            {'I', 1}, {'V', 5}, {'X', 10}, {'L', 50},
            {'C', 100}, {'D', 500}, {'M', 1000}
        };
        
        int sum = 0, prev = 0;
        for (int i = s.Length - 1; i >= 0; --i)
        {
            int curr = romanToArabic[s[i]];
            if (curr < prev) 
                sum -= curr;
            else 
                sum += curr;
            prev = curr;
        }
        return sum;
    }

    static void Main()
    {
        Console.Write("Enter Roman numeral: ");
        string input = Console.ReadLine();
        Console.WriteLine($"{input} -> {RomanToArabic(input)}");
    }
}