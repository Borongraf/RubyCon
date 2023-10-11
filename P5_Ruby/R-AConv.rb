# frozen_string_literal: true

def roman_to_arabic(roman)
  roman_num = {
    'I' => 1, 'V' => 5, 'X' => 10,
    'L' => 50, 'C' => 100, 'D' => 500,
    'M' => 1000
  }
  arabic = 0
  prev_value = 0

  roman.reverse.each_char do |char|
    value = roman_num[char]

    if value < prev_value
      arabic -= value
    else
      arabic += value
    end
    prev_value = value
  end
  arabic
end

def arabic_to_roman(arabic)
  return '' if arabic <= 0 || arabic >= 4000

  roman_num = {
    1000 => 'M', 900 => 'CM', 500 => 'D', 400 => 'CD',
    100 => 'C', 90 => 'XC', 50 => 'L', 40 => 'XL',
    10 => 'X', 9 => 'IX', 5 => 'V', 4 => 'IV',
    1 => 'I'
  }
  roman = ''
  arabic_num = roman_num.keys.sort { |a, b| b <=> a }

  arabic_num.each do |value|
    while arabic >= value
      roman += roman_num[value]
      arabic -= value
    end
  end
  roman
end

conv_type, value = ARGV
case conv_type
when 'arabic'
  result = roman_to_arabic(value)
  puts "#{value} = #{result}"
when 'roman'
  result = arabic_to_roman(value.to_i)
  puts "#{value} = #{result}"
else
  puts "Неправильна конверсія"
end
