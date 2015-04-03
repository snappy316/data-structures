require 'spec_helper'
require 'merge_sort'

describe 'merge Sort' do
  it 'should correctly sort numbers' do
    to_sort = [22, 3, 42, 1, 54, 56, 35]
    sorted = to_sort.merge_sort
    sorted.must_equal [1, 3, 22, 35, 42, 54, 56]
  end
end
