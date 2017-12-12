require 'data_mapper'

require 'dm-postgres-adapter'

DataMapper::Logger.new($stdout, :debug)
DataMapper.setup(:default, "postgres://localhost/database_play")


class Students
  include DataMapper::Resource
  property :id, Serial
  property :name, String
  property :age, Integer
  property :DOB, Integer


end
 DataMapper.finalize
 # DataMapper.auto_migrate! # DANGEROUS it cleans all the data from data base
 DataMapper.auto_upgrade!


student_11 = Students.create(:name => 'Nikolas', :age => 28, :DOB => 1985)
database_play = Students.get(2)
database_play.destroy
#DELETE FROM "students" WHERE "id" = 1
