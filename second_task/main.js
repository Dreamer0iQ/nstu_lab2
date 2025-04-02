function romanToArabic(s) {
    const romanToArabic = {
        'I': 1, 'V': 5, 'X': 10, 'L': 50,
        'C': 100, 'D': 500, 'M': 1000
    };
    
    let sum = 0;
    let prev = 0;
    
    for (let i = s.length - 1; i >= 0; i--) {
        let curr = romanToArabic[s[i]];
        if (curr < prev) {
            sum -= curr;
        } else {
            sum += curr;
        }
        prev = curr;
    }
    
    return sum;
}

const examples = ["LXVI", "LXXXI"];
examples.forEach(ex => console.log(`${ex} -> ${romanToArabic(ex)}`));