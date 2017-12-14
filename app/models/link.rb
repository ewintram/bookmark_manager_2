class Link
  include DataMapper::Resource
  property :id, Serial
  property :link_name, String
  property :link_url, String

  has n, :tags, :through => Resource
end
