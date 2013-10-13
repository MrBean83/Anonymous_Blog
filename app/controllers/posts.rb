
get '/posts' do
  @posts = Post.all
  erb :posts
end

get '/post/:id' do
  @post = Post.find(params[:id])
  erb :post 
end

get '/create_posts' do
  erb :create_posts
end

post '/create_posts' do
  @post = Post.create(params[:post])
  redirect '/posts'
end

get '/edit_post/:id' do
  @post = Post.find(params[:id])
  erb :edit_post
end

post '/update_post/:id' do
  @post = Post.find(params[:id])
  @post.update_attributes(params[:post])
  redirect '/posts'
end

get '/post/delete_post/:id' do
  @post = Post.find(params[:id])
  @post.destroy
  redirect '/'
end
