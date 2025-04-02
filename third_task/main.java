import java.util.Scanner;

public class Main {
    public static boolean isIncreasing(int num) {
        if (num < 10) return false;
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
        Scanner scanner = new Scanner(System.in);
        System.out.print("Введите количество чисел: ");
        int count = scanner.nextInt();

        System.out.println("Введите " + count + " чисел:");
        boolean firstOutput = true;

        for (int i = 0; i < count; i++) {
            int num = scanner.nextInt();
            if (isIncreasing(num)) {
                if (!firstOutput) {
                    System.out.print(" ");
                }
                System.out.print(reverseNumber(num));
                firstOutput = false;
            }
        }
    }
}