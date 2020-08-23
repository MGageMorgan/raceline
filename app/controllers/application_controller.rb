require './config/environment'
require 'pry'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get "/" do
    erb :welcome
  end

  post '/post' do
    @post = Post.new
    @post.title = params[:title]
    @post.content = params[:content]
    @post.category = params[:category]
    @post.save

    erb :post
  end

end
