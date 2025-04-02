use std::io;

fn is_increasing(mut num: i32) -> bool {
    if num < 10 {
        return false;
    }
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
    let mut input = String::new();
    println!("Введите количество чисел:");
    io::stdin().read_line(&mut input).unwrap();
    let count: i32 = input.trim().parse().unwrap();

    println!("Введите {} чисел:", count);
    let mut first_output = true;

    for _ in 0..count {
        let mut num_input = String::new();
        io::stdin().read_line(&mut num_input).unwrap();
        let num: i32 = num_input.trim().parse().unwrap();

        if is_increasing(num) {
            if !first_output {
                print!(" ");
            }
            print!("{}", reverse_number(num));
            first_output = false;
        }
    }
}