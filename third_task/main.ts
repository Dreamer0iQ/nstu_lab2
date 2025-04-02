import * as readlineSync from 'readline-sync';

function isIncreasing(num: number): boolean {
    if (num < 10) return false;

    let prevDigit = 10;
    while (num > 0) {
        let currentDigit = num % 10;
        if (currentDigit >= prevDigit) {
            return false;
        }
        prevDigit = currentDigit;
        num = Math.floor(num / 10);
    }
    return true;
}

function reverseNumber(num: number): number {
    let reversed = 0;
    while (num > 0) {
        reversed = reversed * 10 + (num % 10);
        num = Math.floor(num / 10);
    }
    return reversed;
}

function main(): void {
    let count = parseInt(readlineSync.question("Введите количество чисел: "));
    console.log("Введите " + count + " чисел:");

    let firstOutput = true;

    for (let i = 0; i < count; i++) {
        let num = parseInt(readlineSync.question(""));

        if (isIncreasing(num)) {
            if (!firstOutput) {
                process.stdout.write(" ");
            }
            process.stdout.write(reverseNumber(num).toString());
            firstOutput = false;
        }
    }
    console.log();
}

main();