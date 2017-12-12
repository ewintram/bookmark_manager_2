require "data_mapper"
require 'dm-postgres-adapter'
require_relative '../models/db_helper.rb'

# DataMapper::Logger.new($stdout, :debug)

class Link
  include DataMapper::Resource
  property :id, Serial
  property :link_name, String
  property :link_url, String
end

db_initialize
