require 'spec_helper'
require 'linked_list'

describe 'Linked List' do
  it 'should have a value after being created' do
    node1 = Node.new(12, nil)
    node1.must_respond_to(:val)
    node1.val.must_equal(12)
  end

  it 'should link to another node' do

  end
end


# Node = Struct.new(:val, :nxt)
# Node.new(12, (Node.new(22, ...))) - stupidly recursive
