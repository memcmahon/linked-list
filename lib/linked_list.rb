require './lib/node'

class LinkedList
  attr_reader :head
  def initialize
    @head = nil
  end

  def append(current = @head, num)
    if head.nil?
      @head = Node.new(num)
    elsif current.next_node.nil?
      current.next_node = Node.new(num)
    else
      current = current.next_node
      append(current, num)
    end
  end

  def count(current = @head, tally = 0)
    if current.nil?
      return tally
    elsif current.next_node.nil?
      tally += 1
      return tally
    else
      tally += 1
      current = current.next_node
      count(current, tally)
    end
  end
end
