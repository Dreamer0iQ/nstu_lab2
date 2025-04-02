use std::io;

fn count_trailing_zeroes(mut n: u32) -> u32 {
    let mut count = 0;
    while n >= 5 {
        n /= 5;
        count += n;
    }
    count
}

fn main() {
    println!("Введите число: ");
    let mut input = String::new();
    io::stdin().read_line(&mut input).expect("Ошибка чтения ввода");
    let number: u32 = input.trim().parse().expect("Ошибка: введите целое число");
    println!("Количество конечных нулей в факториале: {}", count_trailing_zeroes(number));
}