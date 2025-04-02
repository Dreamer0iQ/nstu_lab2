use std::collections::HashMap;
use std::io;

fn roman_to_arabic(s: &str) -> i32 {
    let roman_to_arabic: HashMap<char, i32> = [
        ('I', 1), ('V', 5), ('X', 10), ('L', 50),
        ('C', 100), ('D', 500), ('M', 1000)
    ].iter().cloned().collect();
    
    let mut sum = 0;
    let mut prev = 0;
    
    for ch in s.chars().rev() {
        let curr = roman_to_arabic[&ch];
        if curr < prev {
            sum -= curr;
        } else {
            sum += curr;
        }
        prev = curr;
    }
    
    sum
}

fn main() {
    println!("Enter Roman numeral: ");
    let mut input = String::new();
    io::stdin().read_line(&mut input).expect("Failed to read line");
    let input = input.trim();
    println!("{} -> {}", input, roman_to_arabic(input));
}