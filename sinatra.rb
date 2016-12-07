require 'sinatra'
require 'sinatra/activerecord'

set :public_folder, './public'

class User < ActiveRecord::Base
  has_many :posts
end

class Post < ActiveRecord::Base
  belongs_to :user
end

get '/' do
  @users = User.all
  erb :index
end

get '/users' do
  @users = User.all
  erb :users
end

get '/posts' do
  @posts = Post.all
  erb :posts
end

post '/' do
  Post.new(params).save!
  redirect to "/"
end
