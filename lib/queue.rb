Node = Struct.new(:val, :next)

class Queue
  attr_reader :head, :tail, :size

  def initialize
    @head = nil
    @tail = nil
    @size = 0
  end

  def enqueue(node)
    if @head.nil?
      @head = node
      @tail = node
      @size += 1
    else
      @tail.next = node
      @tail = node
      @size += 1
    end
  end

  def dequeue
    raise "No queued items" if @head.nil?

    to_return = @head
    @head = @head.next
    @size -= 1
    to_return
  end
end
