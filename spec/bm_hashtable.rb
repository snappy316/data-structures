require 'benchmark'
require_relative '../lib/hashtable'
require_relative '../lib/hash_linked_list'

dictionary = Array.new
File.open('/usr/share/dict/words') do |list|
  list.each { |word| dictionary << word }
end

backwards_dictionary = dictionary.reverse

hash = Hashtable.new(100_000, LinkedList)

Benchmark.bm do |x|
  x.report("Hashtable - setting") do
    dictionary.each do |word|
      hash.set(word, word.reverse)
    end
  end
  x.report("Hashtable - getting") do
    dictionary.first(100_000).each do |word|
      hash.get(word)
    end
  end
  x.report("Hashtable - reverse") do
    dictionary.last(100_000).each do |word|
      hash.get(word)
    end
  end
end
