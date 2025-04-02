def roman_to_arabic(s: str) -> int:
    roman_to_arabic = {
        'I': 1, 'V': 5, 'X': 10, 'L': 50,
        'C': 100, 'D': 500, 'M': 1000
    }
    
    total = 0
    prev = 0
    
    for char in reversed(s):
        curr = roman_to_arabic[char]
        if curr < prev:
            total -= curr
        else:
            total += curr
        prev = curr
    
    return total

input_str = input("Введите римскую цифру: ")
print(f"{input_str} -> {roman_to_arabic(input_str)}")