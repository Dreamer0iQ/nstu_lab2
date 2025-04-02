def count_trailing_zeroes(n):
    count = 0
    while n >= 5:
        n = n // 5
        count += n
    return count

number = int(input("Введите число: "))
print(f"Количество конечных нулей в факториале: {count_trailing_zeroes(number)}")