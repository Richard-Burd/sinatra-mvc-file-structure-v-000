class ApplicationController < Sinatra::Base

  configure do
  	set :views, "app/views"
  	set :public_dir, "public"
  end

  get "/" do
#    raise params.inspect
  	erb :index
  end

  get '/posts/:id' do
  #  raise params.inspect
    @post = Post.find(params[:id])

    erb :"posts/show.html"
  end

end
