import java.util.Scanner;

public class Main {
    public static int countTrailingZeroes(int n) {
        int count = 0;
        while (n >= 5) {
            n /= 5;
            count += n;
        }
        return count;
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.print("Введите число: ");
        int number = scanner.nextInt();
        System.out.println("Количество конечных нулей в факториале: " + countTrailingZeroes(number));
        scanner.close();
    }
}