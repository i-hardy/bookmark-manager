require 'data_mapper'
require 'dm-postgres-adapter'
# Link class
class Link
  include DataMapper::Resource

  property :id,     Serial
  property :title,  String
  property :url,    String
end

database = "postgres://localhost/bookmark_manager_#{ENV['RACK_ENV']}"

DataMapper.setup(:default, database)
DataMapper.finalize
DataMapper.auto_upgrade!
