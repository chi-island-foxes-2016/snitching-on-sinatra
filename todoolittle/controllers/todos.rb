get '/todos' do
  # "Welcome to todoolittle"
  @todos = Todo.all
  erb :index
end

# post '/todos' do
#   puts "Hello from POSTS /todos!!"
# end

post '/todos' do
  Todo.create(description: params[:description])
  redirect '/todos'
end
