# frozen_string_literal: true

module Printable
  def print_info
    instance_variables.each do |var|
      puts "#{var.to_s[1..-1]}: #{instance_variable_get(var)}"
    end
  end
end

class Hero
  include Printable
  def initialize(name, clas, strength, constitution, dexterity, intelligence, wisdom, charisma)
    @name = name
    @clas = clas
    @strength = strength
    @constitution = constitution
    @dexterity = dexterity
    @intelligence = intelligence
    @wisdom = wisdom
    @charisma = charisma
  end
end

character = Hero.new("Orvas", "Rogue", 8, 16, 12, 15, 10, 16)
character.print_info