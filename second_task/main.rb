def roman_to_arabic(s)
    roman_to_arabic = {
        'I' => 1, 'V' => 5, 'X' => 10, 'L' => 50,
        'C' => 100, 'D' => 500, 'M' => 1000
    }
    
    sum = 0
    prev = 0
    
    s.reverse.each_char do |char|
        curr = roman_to_arabic[char]
        sum += curr < prev ? -curr : curr
        prev = curr
    end
    
    sum
end

print "Enter Roman numeral: "
input = gets.chomp
puts "#{input} -> #{roman_to_arabic(input)}"