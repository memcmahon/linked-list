require 'minitest'
require 'minitest/autorun'
require './lib/stack'
require 'pry'

class StackTest < Minitest::Test
  def test_it_can_peek_at_the_top_of_the_stack
    stack = Stack.new
    stack.push(5)
    stack.push(4)
    stack.push(18)

    assert_equal 18, stack.peek
  end
end
