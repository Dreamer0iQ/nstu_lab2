// Функция проверки возрастания цифр
function isIncreasing(num) {
    if (num < 10) return false; // Исключаем однозначные числа
    
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

// Функция переворота числа
function reverseNumber(num) {
    let reversed = 0;
    while (num > 0) {
        reversed = reversed * 10 + num % 10;
        num = Math.floor(num / 10);
    }
    return reversed;
}

// Основная программа
const countInput = prompt("Введите количество чисел:");
const count = parseInt(countInput);

if (isNaN(count)) {
    alert("Ошибка: введите число!");
} else {
    let foundNumbers = false;
    
    for (let i = 0; i < count; i++) {
        const numInput = prompt(`Введите число ${i + 1} из ${count}:`);
        const num = parseInt(numInput);
        
        if (!isNaN(num) && isIncreasing(num)) {
            console.log(`${reverseNumber(num)}`);
            foundNumbers = true;
        }
    }
    
    if (!foundNumbers) {
        alert("Нет подходящих чисел");
    }
}