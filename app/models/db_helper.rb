require 'data_mapper'

def db_initialize
  DataMapper.setup(:default, "postgres://localhost/bookmark_manager_test")
  DataMapper.finalize
  DataMapper.auto_upgrade!
end
