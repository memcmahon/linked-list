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
end
