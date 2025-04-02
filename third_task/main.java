import java.util.ArrayList;
import java.util.Scanner;

public class Main {
    public static boolean isIncreasing(int num) {
        int prevDigit = 10;
        while (num > 0) {
            int currentDigit = num % 10;
            if (currentDigit >= prevDigit) {
                return false;
            }
            prevDigit = currentDigit;
            num /= 10;
        }
        return true;
    }

    public static int reverseNumber(int num) {
        int reversed = 0;
        while (num > 0) {
            reversed = reversed * 10 + num % 10;
            num /= 10;
        }
        return reversed;
    }

    public static void main(String[] args) {
        ArrayList<Integer> numbers = new ArrayList<>();
        Scanner scanner = new Scanner(System.in);
        System.out.println("Введите числа, завершите ввод 0:");
        
        while (true) {
            int num = scanner.nextInt();
            if (num == 0) break;
            if (num/10) != 0{
                numbers.add(num);
            }
        }
        
        for (int num : numbers) {
            if (isIncreasing(num)) {
                System.out.print(reverseNumber(num) + " ");
            }
        }
    }
}