# frozen_string_literal: true

class Singleton
  @instance = nil

  private_class_method :new

  def self.instance
    @instance ||= new
  end

  def some_method
    puts "Викликано метод у Singleton"
  end
end

first_instance = Singleton.instance
first_instance.some_method

second_instance = Singleton.new
