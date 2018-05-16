class Node
  attr_reader :data
  attr_accessor :next_node
  
  def initialize(num)
    @data = num
    @next_node = nil
  end
end
