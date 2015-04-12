Node = Struct.new(:key, :val, :next)

class LinkedList
  attr_accessor :head

  def initialize(node = nil)
    @head = node
  end

  def insert(key, value)
    node = Node.new(key, value, @head)
    @head = node
  end

  def search_key(key)
    if @head.key == key
      @head.val
    else
      current = @head

      until current.nil? || current.key == key
        current = current.next
      end

      current
    end
  end

  def search_val(val)
    if @head.val == val
      @head.val
    else
      current = @head

      until current.nil? || current.val == val
        current = current.next
      end

      current.val
    end
  end

  def remove(node)
    result = nil

    if @head.val == node.val
      result = @head
      @head = @head.next
    else
      found = false
      current = @head

      until found || current.next.nil?
        if current.next.val == node.val
          result = current.next
          current.next = current.next.next
          found = true
        else
          current = current.next
        end
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
