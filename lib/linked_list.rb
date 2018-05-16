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

  def prepend(num)
    if head.nil?
      @head = Node.new(num)
    else
      holder = @head
      @head = Node.new(num, holder)
    end
  end

  def insert(position, num, tally = 0, current = @head)
    if position == 0 || (position - 1) == count
      append(num)
    else
      while tally != (position - 1)
        current = current.next_node
        tally += 1
      end
      holder = current.next_node
      current.next_node = Node.new(num, holder)
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

  def to_s(current = @head, string = "")
    if current.nil?
      return string
    else
      string = "#{string}#{current.data}"
      current = current.next_node
      to_s(current, string)
    end
  end
end
