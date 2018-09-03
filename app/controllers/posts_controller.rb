class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new
    @post.title = params[:title]
    @post.description = params[:description]
    @post.save
    redirect_to post_path(@post)
  end

  #edit and update methods here
  def edit 
    get 'posts/:id/edit', to: 'posts#edit', as: :edit_post
  end
  
  def update 
    patch 'posts/:id', to: 'posts#update'
  end 
  
  
  
  
end
