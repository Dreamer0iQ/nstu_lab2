#include <iostream>
using namespace std;

int main() {
    int number, count = 0;
    cout << "Введите число: ";
    cin >> number;

    if (number < 0) {
        cout << "Ошибка: Факториал отрицательного числа не определён." << endl;
        return 1;
    }

    while (number >= 5) {
        number /= 5;
        count += number;
    }

    cout << "Количество нулей в конце факториала: " << count << endl;

    return 0;
}
