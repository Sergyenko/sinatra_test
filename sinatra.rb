require 'sinatra'
require 'sinatra/activerecord'

set :public_folder, './public'

class User < ActiveRecord::Base
  validates_presence_of :name
end

DATABASE = []

get '/' do
  erb :index
end

get '/users' do
  @users = User.all
  erb :users
end

get "/:username" do
    @user = params['username']
    erb :user
end

post '/' do
  DATABASE << {
    :name => params['name'],
    :message => params['message']
  }
  redirect to "/"
end
