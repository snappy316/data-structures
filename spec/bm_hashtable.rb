require 'benchmark'
require_relative '../lib/hashtable'

dictionary = Array.new
File.open('/usr/share/dict/words') do |list|
  list.each { |word| dictionary << word }
end

hash = Hashtable.new(1024)

Benchmark.bmbm do |x|
  x.report("Hashtable - setting") do
    dictionary.each do |word|
      hash.set(word, word.reverse)
    end
  end
  x.report("Hashtable - getting") do
    dictionary.each do |word|
      hash.get(word)
    end
  end
end
