require "sinatra/base"
require "data_mapper"
require_relative "./models/link.rb"


class BookmarkManagerApp < Sinatra::Base

get "/links" do
  @links = Link.all
erb :links
end


# run if file is run directly by Ruby
run! if app_file == $0
end
