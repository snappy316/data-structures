require 'spec_helper'
require 'binary_tree'

def insert_values
  @apple = BinaryTree.new("Tim")
  @apple.root.add("Jony", "Phil")
  @apple.find("Phil").add("Craig", "Eddie")
  @apple.find("Jony").add("Dan", "Katie")
  @apple.find("Katie").add("Peter", "Andrea")
end

describe 'Binary Tree' do
  it 'should correctly create a Binary Tree' do
    apple = BinaryTree.new("Tim")
    apple.root.add("Jony", "Phil")
    apple.find("Phil").add("Craig", "Eddie")
    apple.find("Jony").add("Dan", "Katie")
    apple.find("Katie").add("Peter", "Andrea")
  end

  it 'should correctly print out a pre-ordered list' do
    insert_values
    @apple.print_preorder.must_equal("Tim, Jony, Dan, Katie, Peter, Andrea, Phil, Craig, Eddie")
  end

  it 'should correctly print out an in-ordered list' do
    insert_values
    @apple.print_inorder.must_equal("Dan, Jony, Peter, Katie, Andrea, Tim, Craig, Phil, Eddie")
  end

  it 'should correctly print out a post-ordered list' do
    insert_values
    @apple.print_postorder.must_equal("Dan, Peter, Andrea, Katie, Jony, Craig, Eddie, Phil, Tim")
  end
end
