require 'sinatra'

set :public_folder, './public'

DATABASE = []

get '/' do
  erb :index
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
