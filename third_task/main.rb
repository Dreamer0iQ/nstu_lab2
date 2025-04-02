def is_increasing(num)
    prev_digit = 10
    while num > 0
      current_digit = num % 10
      if current_digit >= prev_digit
        return false
      end
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
  
  numbers = []
  puts "Введите числа, завершите ввод 0:"
  
  loop do
    num = gets.chomp.to_i
    break if num == 0
    if num / 10 != 0
      numbers << num
    end
  end
  
  numbers.each do |num|
    if is_increasing(num)
      print "#{reverse_number(num)} "
    end
  end