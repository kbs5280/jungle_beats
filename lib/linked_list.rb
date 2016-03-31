require_relative 'node'
require 'pry'

class LinkedList
attr_reader :head

  def initialize
    @head = nil
    @string_data = []
  end

  def append(data)
    @string_data << data
    if @head.nil?
      @head = Node.new(data)
    else
      current = @head
      until current.next_node == nil
        current = current.next_node
      end
      new_node = Node.new(data)
      current.next_node = new_node
    end
  end

  def count
    current = @head
    if @head.nil?
      counter = 1
    else
      counter = 1
      until current.next_node == nil
        current = current.next_node
        counter += 1
      end
   end
   counter
  end

  def to_string
    string = @string_data.join(" ")
    string.split
  end

  def prepend(data)
    @string_data.unshift(data)
    if @head.nil?
      @head = Node.new(data)
    else
      current = @head
      @head = Node.new(data)
      @head.next_node = current
    end
  end

  #Lane
  # def insert(position, data)
  #   counter = 0
  #   current = @head
  #   new_node = Node.new(data)
  #     until counter == position
  #       before_node = current
  #       current = current.next_node
  #       counter += 1
  #     end
  #     before_node.next_node = new_node
  #   new_node.next_node = current
  # end

end
