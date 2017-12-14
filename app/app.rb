ENV['RACK_ENV'] ||= 'development'

require "sinatra/base"
require_relative "./models/data_mapper_setup"



class BookmarkManagerApp < Sinatra::Base

get "/" do
  "Hello"
end

get "/links" do
  @links = Link.all
  p @links.tags
  p @links
  erb :'links/index'
end

get '/links/new' do
  erb :'links/new'
end

post '/links' do
  link = Link.create(link_name: params[:link_name], link_url: params[:link_url])
  tag = Tag.create(tag_name: params[:tag_name])
  link.tags << tag
  link.save
  redirect '/links'

end


# run if file is run directly by Ruby
run! if app_file == $0
end
