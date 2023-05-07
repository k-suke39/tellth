class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
  end

  def edit
     @post = Post.find(params[:id])
  end

  def update
     @post = Post.find(params[:id])
    
     if @post.update(title: params[:post][:title], content: params[:post][:content])
      flash[:notice] = "編集に成功しました"
      redirect_to "/posts"
     end
  end
end
