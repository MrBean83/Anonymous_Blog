get '/posts' do
  @posts = Post.all
  erb :posts
end

get '/posts/:id' do
  @post = Post.find_by_id(params[:id])
  erb :post 
end

get '/create_posts' do
  erb :create_posts
end

post'/create_posts' do
  p "hello"
  @post = params[:post]
  erb '/posts'
end

# get do
# end

# post do
# end
