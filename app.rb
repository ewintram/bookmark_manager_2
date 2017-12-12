require "sinatra/base"
require "data_mapper"


class BookmarkManagerApp < Sinatra::Base

get "/" do
erb(:index)
end

get "/add_link" do
end


# run if file is run directly by Ruby
run! if app_file == $0
end
