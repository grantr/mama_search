require 'rake'

namespace :elasticsearch do
  desc 'Start elasticsearch'
  task :start do
    sh 'elasticsearch/server/bin/elasticsearch -f' 
  end
end
