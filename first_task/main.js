function countTrailingZeroes(n) {
    let count = 0;
    while (n >= 5) {
        n = Math.floor(n / 5);
        count += n;
    }
    return count;
}

const number = parseInt(prompt("Введите число:"));
console.log(`Количество конечных нулей в факториале: ${countTrailingZeroes(number)}`);