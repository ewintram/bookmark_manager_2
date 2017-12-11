require 'data_mapper'

require 'dm-postgres-adapter'

DataMapper::Logger.new($stdout, :debug)
DataMapper.setup(:default, "postgres://localhost/database_play")


class Students
  include DataMapper::Resource
  property :id, Serial
  property :name, String

end
 DataMapper.finalize
 # DataMapper.auto_migrate! # DANGEROUS it cleans all the data from data base
 DataMapper.auto_upgrade!


database_play = Students.create(:id => 2, :name => 'Valentina')
database_play = Students.get(2)
database_play.destroy
