require 'minitest'
require 'minitest/autorun'
require './lib/linked_list'
require './lib/node'
require 'pry'

class LinkedListTest < Minitest::Test
  def test_it_has_a_head
    linked_list = LinkedList.new()

    assert linked_list.head.nil?
  end

  def test_it_can_add_a_first_node
    linked_list = LinkedList.new()

    linked_list.append(5)

    assert_instance_of Node, linked_list.head
  end

  def test_it_can_add_a_second_node
    linked_list = LinkedList.new()
    linked_list.append(5)
    linked_list.append(4)

    assert_instance_of Node, linked_list.head.next_node
  end

  def test_it_can_count_nodes
    linked_list = LinkedList.new()
    linked_list.append(5)
    linked_list.append(4)
    linked_list.append(3)

    assert 3, linked_list.count
  end
end
