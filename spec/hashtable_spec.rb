require_relative './spec_helper'
require_relative '../lib/hashtable'

describe 'Hashtable' do
  # it 'should initialize as a fixed size' do
  #   ht = Hashtable.new(1024)
  # end

  it 'should add new key/value pairs to the table' do
    ht = Hashtable.new(1024)
    ht.set('key', 'value')
    val = ht.get('key')
    val.must_equal('value')
  end

  # it 'should tell me the size of the table' do
  #   ht = Hashtable.new(1024)
  #   ht.size.must_equal(0)
  #   ht.set('key', 'value')
  #   ht.size.must_equal(1)
  # end
end
