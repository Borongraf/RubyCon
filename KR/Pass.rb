# frozen_string_literal: true

characters = ('a'..'z').to_a + ('0'..'9').to_a + ('A'..'Z').to_a
i = 0
length = ARGV[0].to_i

if length > 1
  puts "Введіть довжину пароля"
  while i < length
    random_character = characters.sample
    print random_character
    i += 1
  end
else
  puts "Довжина пароля не может бути менше 1"
end
