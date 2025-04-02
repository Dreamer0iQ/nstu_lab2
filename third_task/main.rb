def is_increasing(num)
  return false if num < 10
  prev_digit = 10
  while num > 0
    current_digit = num % 10
    return false if current_digit >= prev_digit
    prev_digit = current_digit
    num /= 10
  end
  true
end

def reverse_number(num)
  reversed = 0
  while num > 0
    reversed = reversed * 10 + num % 10
    num /= 10
  end
  reversed
end

print "Введите количество чисел: "
count = gets.chomp.to_i

puts "Введите #{count} чисел:"
first_output = true

count.times do
  num = gets.chomp.to_i
  if is_increasing(num)
    print " " unless first_output
    print reverse_number(num)
    first_output = false
  end
end