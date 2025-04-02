def is_increasing(num):
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

numbers = []
print("Введите числа, завершите ввод 0:")

while True:
    num = int(input())
    if num == 0:
        break
    numbers.append(num)

for num in numbers:
    if is_increasing(num):
        print(reverse_number(num), end=" ")