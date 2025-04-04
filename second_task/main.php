<?php
function romanToArabic($s) {
    $romanToArabic = [
        'I' => 1, 'V' => 5, 'X' => 10, 'L' => 50,
        'C' => 100, 'D' => 500, 'M' => 1000
    ];
    
    $sum = 0;
    $prev = 0;
    
    for ($i = strlen($s) - 1; $i >= 0; $i--) {
        $curr = $romanToArabic[$s[$i]];
        if ($curr < $prev) {
            $sum -= $curr;
        } else {
            $sum += $curr;
        }
        $prev = $curr;
    }
    
    return $sum;
}

echo "Enter Roman numeral: ";
$input = trim(fgets(STDIN));
echo "$input -> " . romanToArabic($input) . "\n";
?>