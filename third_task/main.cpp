#include <iostream>
using namespace std;

bool isIncreasing(int num) {
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

int reverseNumber(int num) {
    int reversed = 0;
    while (num > 0) {
        reversed = reversed * 10 + num % 10;
        num /= 10;
    }
    return reversed;
}

int main() {
    int count;
    cout << "Введите количество чисел: ";
    cin >> count;

    cout << "Введите " << count << " чисел:" << endl;
    
    bool firstOutput = true; // Флаг для управления пробелами

    for (int i = 0; i < count; ++i) {
        int num;
        cin >> num;

        if (isIncreasing(num)) {
            if (!firstOutput) {
                cout << " "; // Выводим пробел перед следующим числом
            }
            cout << reverseNumber(num);
            firstOutput = false;
        }
    }

    return 0;
}
