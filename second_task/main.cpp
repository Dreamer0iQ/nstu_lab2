#include <iostream>
#include <map>
using namespace std;

int romanToArabic(const string &s) {
    static const map<char, int> romanToArabic {
        {'I', 1}, {'V', 5}, {'X', 10}, {'L', 50},
        {'C', 100}, {'D', 500}, {'M', 1000}
    };
    
    int sum = 0, prev = 0;
    for (int i = s.size() - 1; i >= 0; --i) {
        int curr = romanToArabic.at(s[i]);
        if (curr < prev) sum -= curr;
        else sum += curr;
        prev = curr;
    }
    return sum;
}

int main() {
    string input;
    cout << "Enter Roman numeral: ";
    cin >> input;
    cout << input << " -> " << romanToArabic(input) << endl;
    return 0;
}