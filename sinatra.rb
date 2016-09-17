require 'sinatra'

get '/' do
  "<h1> Welcome to Sinatra</h1><br/><a href='/about'>About</a>"
end

get '/about' do
  "<h1> Hello About Page</h1><br/><a href='/'>Home</a>"
end
