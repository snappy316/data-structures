require 'spec_helper'
require 'queue'

describe 'Queue' do
  it 'should initialize blank' do
    q = Queue.new
    q.head.must_be_nil
  end
end

describe 'Enqueueing' do
  it 'should correctly queue a node' do
    q = Queue.new
    node1 = Node.new(1, nil)

    q.enqueue(node1)
    q.head.must_equal(node1)
    q.tail.must_equal(node1)
    node1.next.must_be_nil
  end

  it 'should correctly queue multiple nodes' do
    q = Queue.new
    node1 = Node.new(1, nil)
    node2 = Node.new(2, nil)
    node3 = Node.new(3, nil)

    q.enqueue(node1)
    q.enqueue(node2)
    q.enqueue(node3)

    q.head.must_equal(node1)
    q.tail.must_equal(node3)

    node1.next.must_equal(node2)
    node2.next.must_equal(node3)
    node3.next.must_be_nil
  end
end

describe 'Dequeueing' do
  it 'should correctly dequeue one node' do
    q = Queue.new
    node1 = Node.new(1, nil)

    q.enqueue(node1)

    dq = q.dequeue
    dq.must_equal(node1)

    q.head.must_be_nil
  end

  it 'should correctly dequeue multiple nodes' do
    q = Queue.new
    node1 = Node.new(1, nil)
    node2 = Node.new(2, nil)
    node3 = Node.new(3, nil)

    q.enqueue(node1)
    q.enqueue(node2)
    q.enqueue(node3)

    dq = q.dequeue
    dq.must_equal(node1)

    dq = q.dequeue
    dq.must_equal(node2)
  end

  it 'should raise an exception if the queue is empty' do
    q = Queue.new
    proc {q.dequeue}.must_raise RuntimeError
  end
end

describe 'Size' do
  it 'should correctly give the size of the queue' do
    q = Queue.new
    node1 = Node.new(1, nil)
    node2 = Node.new(2, nil)
    node3 = Node.new(3, nil)

    q.enqueue(node1)
    q.enqueue(node2)
    q.enqueue(node3)

    q.size.must_equal(3)

    q.dequeue
    q.size.must_equal(2)
  end

  it 'should say 0 if it is empty' do
    q = Queue.new
    q.size.must_equal(0)
  end
end
