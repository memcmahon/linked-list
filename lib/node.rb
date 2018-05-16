class Node
  attr_reader :data
  attr_accessor :next_node

  def initialize(num, next_node = nil)
    @data = num
    @next_node = next_node
  end
end
