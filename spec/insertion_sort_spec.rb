require 'spec_helper'
require 'insertion_sort'

describe 'Insertion Sort' do
  it 'should correctly sort numbers' do
    insertion = [22, 3, 42, 1, 54, 56, 35]
    sorted = insertion.insertion_sort
    sorted.must_equal [1, 3, 22, 35, 42, 54, 56]
  end
end
