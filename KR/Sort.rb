# frozen_string_literal: true

if ARGV.length > 2
  direction = ARGV[-1]
  puts "Введіть список чисел та режим сортування. Приклад: ruby Sort.rb 5 2 1 8 3 зростання"
end

i=0
numbers = []
while i<ARGV.length-1
  numbers[i]=ARGV[i]
i+=1
end

case direction
when 'зростання'
  sorted_numbers = numbers.sort
when 'спадання'
  sorted_numbers = numbers.sort { |a, b| b <=> a }
else
  print("Невірно вказано напрям сортування. Використайте 'зростання' або 'спадання'")
end

print("Відсортований список:", sorted_numbers)
