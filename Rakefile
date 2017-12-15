require 'data_mapper'
require 'dm-postgres-adapter'
require './app/app.rb'


namespace :modify_database do
  desc 'it re-writes the whole database'
  task :upgrade do
    DataMapper.auto_upgrade!
    puts "upgraded"
  end

  desc 'it updates the existing database'
  task :migrate do
    DataMapper.auto_migrate!
    puts "migrated"
  end
end
