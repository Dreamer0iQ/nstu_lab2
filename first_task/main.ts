function countTrailingZeroes(n: number): number {
    let count = 0;
    while (n >= 5) {
        n = Math.floor(n / 5);
        count += n;
    }
    return count;
}

const input = prompt("Введите число:");
if (input !== null) {
    const number = parseInt(input);
    if (!isNaN(number)) {
        console.log(`Количество конечных нулей в факториале: ${countTrailingZeroes(number)}`);
    } else {
        console.log("Ошибка: введите корректное число!");
    }
} else {
    console.log("Ошибка: введите корректное число!");
}