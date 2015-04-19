require 'rake/testtask'

task default: 'test'

Rake::TestTask.new do |t|
  t.libs << 'spec'
  t.pattern = 'spec/**/*_spec.rb'
end

task :bmhashtable do
  ruby 'spec/bm_hashtable.rb'
end
