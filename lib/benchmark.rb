require 'benchmark'
require_relative 'insertion_sort'
require_relative 'merge_sort'

random_arr = (1..10_000).map { rand(100) }
sorted_arr = (1..10_000).to_a
reversed_arr = (1..10_000).to_a.reverse

Benchmark.bmbm do |x|
  x.report("Insertion sort - random") { random_arr.dup.insertion_sort }
  x.report("Insertion sort - sorted") { sorted_arr.dup.insertion_sort }
  x.report("Insertion sort - reversed") { reversed_arr.dup.insertion_sort }
  x.report("Merge sort - random") { random_arr.dup.merge_sort }
  x.report("Merge sort - sorted") { sorted_arr.dup.merge_sort }
  x.report("Merge sort - reversed") { reversed_arr.dup.merge_sort }

end
