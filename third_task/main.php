<?php
function isIncreasing($num) {
    if ($num < 10) return false;
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

echo "Введите количество чисел: ";
$count = (int)fgets(STDIN);

echo "Введите $count чисел:\n";
$firstOutput = true;

for ($i = 0; $i < $count; $i++) {
    $num = (int)fgets(STDIN);
    if (isIncreasing($num)) {
        if (!$firstOutput) {
            echo " ";
        }
        echo reverseNumber($num);
        $firstOutput = false;
    }
}
?>