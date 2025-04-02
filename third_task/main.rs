use std::io;

fn is_increasing(mut num: i32) -> bool {
    let mut prev_digit = 10;
    while num > 0 {
        let current_digit = num % 10;
        if current_digit >= prev_digit {
            return false;
        }
        prev_digit = current_digit;
        num /= 10;
    }
    true
}

fn reverse_number(mut num: i32) -> i32 {
    let mut reversed = 0;
    while num > 0 {
        reversed = reversed * 10 + num % 10;
        num /= 10;
    }
    reversed
}

fn main() {
    let mut numbers = Vec::new();
    println!("Введите числа, завершите ввод 0:");

    loop {
        let mut input = String::new();
        io::stdin().read_line(&mut input).unwrap();
        let num: i32 = input.trim().parse().unwrap();
        
        if num == 0 {
            break;
        }
        numbers.push(num);
    }

    for num in numbers {
        if is_increasing(num) {
            print!("{} ", reverse_number(num));
        }
    }
}