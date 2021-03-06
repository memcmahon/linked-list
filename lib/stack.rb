require './lib/linked_list'

class Stack
  def initialize
    @list = LinkedList.new()
  end

  def push(num)
    @list.append(num)
  end

  def pop
    current_node = @list.head
    until current_node.next_node.next_node.nil?
      current_node = current_node.next_node
    end
    pop_value = current_node.next_node.data
    current_node.next_node = nil
    pop_value
  end

  def peek
    current_node = @list.head
    until current_node.next_node.nil?
      current_node = current_node.next_node
    end
    return current_node.data
  end

  def is_empty?
    if @list.count == 0
      true
    else
      false
    end
  end
end
