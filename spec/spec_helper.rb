require 'minitest/autorun'
require 'minitest/spec'

def setup_nodes
  @node12 = Node.new(12)
  @node22 = Node.new(22)
  @node32 = Node.new(32)
  @node42 = Node.new(42)
  @node52 = Node.new(52)

  @node12.next = @node32
  @node32.next = @node42
  @node42.next = @node22
  @node22.next = @node52

  @list = LinkedList.new(@node12)
end
