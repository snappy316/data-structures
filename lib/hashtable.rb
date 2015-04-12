require_relative './hash_linked_list'
require 'digest'

class Hashtable
  attr_reader :size

  def initialize(tableSize)
    @table = Array.new(tableSize).map!{ |bucket| LinkedList.new }
    @size = 0
    @TABLESIZE = tableSize
  end

  def set(key, value)
    raise "Need a string" unless key.is_a?(String)
    
    index = hash(key)
    @table[index].insert(key, value)
    @size += 1
    value
  end

  def get(key)
    raise "Need a string" unless key.is_a?(String)
    index = hash(key)
    @table[index].search_key(key)
  end

  private

  def hash(key)
    md5 = Digest::MD5.new
    md5 << key
    md5.hexdigest.hex  % @TABLESIZE
  end
end
