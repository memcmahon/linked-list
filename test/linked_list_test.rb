require 'minitest'
require 'minitest/autorun'
require './lib/linked_list'

class LinkedListTest < Minitest::Test
  def test_it_has_a_head
    linked_list = LinkedList.new()

    assert linked_list.head.nil?
  end
end
