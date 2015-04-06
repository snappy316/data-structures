require 'spec_helper'
require 'linked_list'

describe 'Linked List' do
  it 'should have a value after being created' do
    node = Node.new(12, nil)
    node.must_respond_to(:val)
    node.val.must_equal(12)
  end

  it 'should link to another node' do
    setup_nodes

    @node12.must_respond_to(:next)
    @node12.next.must_equal(@node32)
  end
end

describe 'Inserting' do
  it 'can insert a new node at the head of the list' do
    setup_nodes
    @list.head.must_equal(@node12)

    node2 = Node.new(2)
    node2.next.must_be_nil

    @list.insert(node2)
    @list.head.must_equal(node2)
    node2.next.must_equal(@node12)
  end
end

describe 'Searching' do
  it 'returns a node if one containing "val" is in the list' do
    setup_nodes
    search = @list.search(42)
    search.val.must_equal(42)
    search.next.must_equal(@node22)
  end

  it 'returns nil if it cannot find "val" in the list' do
    setup_nodes
    search = @list.search(102)
    search.must_be_nil
  end
end

describe 'Removing' do
  it 'returns a node and removes it from the list if it finds the node in the list' do
    setup_nodes
    removed = @list.remove(@node42)
    removed.val.must_equal(42)
    @node32.next.must_equal(@node22)
  end

  it 'returns nil if it does not find nil in the list' do
    setup_nodes
    removed = @list.remove(Node.new(102))
    removed.must_be_nil
  end
end

describe 'Printing to a string' do
  it 'can print a comma-separated list of all values in the list' do
    setup_nodes
    # Setup nodes puts nodes in order - 12, 32, 42, 22, 52
    @list.to_s.must_equal("12, 32, 42, 22, 52")
  end
end
