class BinaryTree
  attr_accessor :root

  class Node
    attr_accessor :val, :left_tree, :right_tree

    def initialize(value)
      @val = value
      @left_tree = NilNode.new
      @right_tree = NilNode.new
    end

    def add(left, right)
      add_left(left)
      add_right(right)
    end

    def add_left(value)
      @left_tree = Node.new(value)
    end

    def add_right(value)
      @right_tree = Node.new(value)
    end

    def postorder
      @left_tree.postorder + @right_tree.postorder + [@val]
    end

    def preorder
      [@val] + @left_tree.preorder + @right_tree.preorder
    end

    def inorder
      @left_tree.inorder + [@val] + @right_tree.inorder
    end
  end

  class NilNode
    def postorder
      []
    end

    def preorder
      []
    end

    def inorder
      []
    end

    def nil?
      true
    end
  end

  def initialize(root)
    @root = Node.new(root)
  end

  def find(val, current = @root)
    return nil if current.nil?
    return current if current.val == val
    find(val, current.left_tree) || find(val, current.right_tree)
  end

  def print_preorder
    @root.preorder.join(', ')
  end

  def print_postorder
    @root.postorder.join(', ')
  end

  def print_inorder
    @root.inorder.join(', ')
  end
end
