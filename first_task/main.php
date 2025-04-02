<?php
// Функция вычисления факториала (ограничена 20 из-за переполнения)
function factorial($num) {
    $result = 1;
    for ($i = 1; $i <= $num; $i++) {
        $result *= $i;  // Умножаем на каждое число от 1 до num
    }
    return $result;
}

// Функция подсчёта конечных нулей
function countZeroes($num) {
    $count = 0;
    while ($num > 0) {
        if ($num % 10 == 0) {
            $count++;
        } else {
            break;  // Прекращаем при первой ненулевой цифре
        }
        $num = (int)($num / 10);  // Убираем последнюю цифру
    }
    return $count;
}

echo "Введите число (не больше 20): ";
$input = trim(fgets(STDIN));

// Проверка на число
if (!is_numeric($input)) {
    echo "Ошибка: Введите целое число\n";
    exit(1);
}

$input = (int)$input;
// Проверка на ограничение
if ($input > 20) {
    echo "Ошибка: Число слишком большое (без GMP поддерживаются только числа ≤ 20)\n";
    exit(1);
}

$resNum = factorial($input);
echo sprintf("Факториал числа %d имеет %d нулей в себе.\n", $input, countZeroes($resNum));
?>