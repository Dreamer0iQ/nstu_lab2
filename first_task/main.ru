def count_trailing_zeroes(n)
  count = 0
  while n >= 5
      n /= 5
      count += n
  end
  count
end

print "Введите число: "
number = gets.chomp.to_i
puts "Количество конечных нулей в факториале: #{count_trailing_zeroes(number)}"