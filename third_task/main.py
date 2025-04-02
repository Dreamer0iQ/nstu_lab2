def is_increasing(num):
    if num < 10:
        return False
    prev_digit = 10
    while num > 0:
        current_digit = num % 10
        if current_digit >= prev_digit:
            return False
        prev_digit = current_digit
        num = num // 10
    return True

def reverse_number(num):
    reversed_num = 0
    while num > 0:
        reversed_num = reversed_num * 10 + num % 10
        num = num // 10
    return reversed_num

count = int(input("Введите количество чисел: "))
print(f"Введите {count} чисел:")

first_output = True
for _ in range(count):
    num = int(input())
    if is_increasing(num):
        if not first_output:
            print(" ", end="")
        print(reverse_number(num), end="")
        first_output = False