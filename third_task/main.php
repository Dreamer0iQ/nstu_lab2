<?php
function isIncreasing($num) {
    $prevDigit = 10;
    while ($num > 0) {
        $currentDigit = $num % 10;
        if ($currentDigit >= $prevDigit) {
            return false;
        }
        $prevDigit = $currentDigit;
        $num = (int)($num / 10);
    }
    return true;
}

function reverseNumber($num) {
    $reversed = 0;
    while ($num > 0) {
        $reversed = $reversed * 10 + $num % 10;
        $num = (int)($num / 10);
    }
    return $reversed;
}

$numbers = [];
echo "Введите числа, завершите ввод 0:\n";

while (true) {
    $num = (int)fgets(STDIN);
    if ($num == 0) break;
    array_push($numbers, $num);
}

foreach ($numbers as $num) {
    if (isIncreasing($num)) {
        echo reverseNumber($num) . " ";
    }
}

echo "\n";
?>