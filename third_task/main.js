function isIncreasing(num) {
    if (num < 10) return false;
    let prevDigit = 10;
    while (num > 0) {
        const currentDigit = num % 10;
        if (currentDigit >= prevDigit) {
            return false;
        }
        prevDigit = currentDigit;
        num = Math.floor(num / 10);
    }
    return true;
}

function reverseNumber(num) {
    let reversed = 0;
    while (num > 0) {
        reversed = reversed * 10 + num % 10;
        num = Math.floor(num / 10);
    }
    return reversed;
}

const count = parseInt(prompt("Введите количество чисел:"));
let output = "";
let firstOutput = true;

for (let i = 0; i < count; i++) {
    const num = parseInt(prompt(`Введите число ${i + 1} из ${count}:`));
    if (isIncreasing(num)) {
        if (!firstOutput) {
            output += " ";
        }
        output += reverseNumber(num);
        firstOutput = false;
    }
}

console.log(output);