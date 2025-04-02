import java.util.HashMap;
import java.util.Map;
import java.util.Scanner;

public class RomanToArabic {
    public static int romanToArabic(String s) {
        Map<Character, Integer> romanToArabic = new HashMap<>();
        romanToArabic.put('I', 1);
        romanToArabic.put('V', 5);
        romanToArabic.put('X', 10);
        romanToArabic.put('L', 50);
        romanToArabic.put('C', 100);
        romanToArabic.put('D', 500);
        romanToArabic.put('M', 1000);

        int sum = 0;
        int prev = 0;

        for (int i = s.length() - 1; i >= 0; i--) {
            int curr = romanToArabic.get(s.charAt(i));
            if (curr < prev)
                sum -= curr;
            else
                sum += curr;
            prev = curr;
        }

        return sum;
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.print("Enter Roman numeral: ");
        String input = scanner.nextLine();
        System.out.println(input + " -> " + romanToArabic(input));
    }
}