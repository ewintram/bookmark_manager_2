require "data_mapper"
require 'dm-postgres-adapter'

DataMapper::Logger.new($stdout, :debug)
DataMapper.setup(:default, "postgres://localhost/database_play")


class Link
  include DataMapper::Resource
  property :id, Serial
  property :link_name, String
  property :link_url, Text
end

DataMapper.finalize
# DataMapper.auto_migrate! # DANGEROUS it cleans all the data from data base
DataMapper.auto_upgrade!
