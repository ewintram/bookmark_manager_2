ENV['RACK_ENV'] ||= 'development'

require "sinatra/base"
require_relative "./models/data_mapper_setup"

class BookmarkManagerApp < Sinatra::Base
enable :sessions

get "/signup" do
  erb(:signup)
end

post "/signupform" do
  User.create(email_address: params[:email_address], password: params[:password])
  session[:email_address] = params[:email_address]
  @email_address = session[:email_address]
  redirect('/links')
end

get "/links" do
  @email_address = session[:email_address]
  @links = Link.all
  erb :'links/index'
end

get '/links/new' do
  erb :'links/new'
end

post '/links' do
    link = Link.create(link_name: params[:link_name], link_url: params[:link_url])
    params[:tag_name].split(',').each do |tag|
      link.tags << Tag.first_or_create(tag_name: tag)
    end
    link.save
    redirect '/links'
end

get '/tags/:tag_name' do
  tag = Tag.first(tag_name: params[:tag_name])
  @links_with_tag = tag ? tag.links : []
  erb :'links/tag_name'
end


# run if file is run directly by Ruby
run! if app_file == $0
end
