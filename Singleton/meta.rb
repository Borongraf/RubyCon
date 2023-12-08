# frozen_string_literal: true

class MyClass
  def my_method
    puts "Original method."
  end
end

obj = MyClass.new

class << obj
  def my_method
    puts "Modified method."
  end
end

obj.my_method
