# frozen_string_literal: true

class Tree
  attr_accessor :left, :right, :data

  def initialize(leaf = nil)
    @data = leaf
  end

  def insert(leaf)
    if @data.nil?
      @data = leaf
    elsif @left.nil?
      @left = Tree.new(leaf)
    elsif @right.nil?
      @right = Tree.new(leaf)
    else
      @left.insert(leaf)
    end
  end

  def branch(&block)
    block.call(@data)
    @left&.branch(&block)
    @right&.branch(&block)
  end
end

items = [1, 2, 3, 4, 5, 6, 7]
tree = Tree.new
items.each { |leaf| tree.insert(leaf) }
tree.branch { |leaf| print "#{leaf} " }