Node = Struct.new(:val, :next)

class LinkedList
  attr_accessor :head

  def initialize(node)
    @head = node
  end

  def insert(node)
    node.next = @head
    @head = node
  end

  def search(val)
    if @head.val == val
      @head.val
    else
      current = @head

      until current.nil? || current.val == val
        current = current.next
      end

      current
    end
  end

  def remove(node)
    return nil if search(node.val).nil?

    found = false
    current = @head
    result = nil

    until found || current.next.nil?
      if current.next.val == node.val
        result = current.next
        current.next = current.next.next
        found = true
      else
        current = current.next
      end
    end

    result
  end

  def to_s
    result = []
    current = @head
    until current.nil?
      result << current.val.to_s
      current = current.next
    end

    result.join(", ")
  end
end
