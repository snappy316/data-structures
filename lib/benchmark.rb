require 'benchmark'
require_relative 'insertion_sort'

random_arr = [2,9,28,15,43,44,25,35,33,9,6,26,15]
nearly_sorted_arr = [3,3,5,11,17,11,12,11,25,25,28,32,33,39,41,42,44,46,50]
reversed_arr = [25,20,15,10,5,3,2,1]

Benchmark.bmbm do |x|
  x.report("Insertion sort - random") { random_arr.dup.insertion_sort }
  x.report("Insertion sort - nearly sorted") { nearly_sorted_arr.dup.insertion_sort }
  x.report("Insertion sort - reversed") { reversed_arr.dup.insertion_sort }
end
