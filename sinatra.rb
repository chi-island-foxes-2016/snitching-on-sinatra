require 'sinatra'

get '/' do
  "Hello world!"
end

get '/about' do
  "A little about me."
end

get '/cities/:city/greetings/:name' do
  # "Hey #{params[:name]}! Welcome to the #{params[:city]} greeting page!"
  # "<h1>We're really excited you're here!</h1>"
  @name = params[:name]
  erb :greeting
end

post '/custom_greetings' do
  @greeting = params[:greeting]
  erb :greeting
end


