class PostsController < ApplicationController
  def index
    @posts = Post.all

  end

  def show
    @post = Post.find(params[:id])
    @comments = @post.comments
    @comment = Comment.new
  end

  def new
  end

  def create
    post = Post.new(title: params[:title], content: params[:content], user_id: @current_user.id)

    if post.save
      flash[:notice] = "質問作成に成功しました"
      redirect_to  "/posts"
    end
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

  def destroy
    @post = Post.find(params[:id])
    if @post.destroy
      flash[:notice] = "削除に成功しました"
      redirect_to "/posts"
    end
  end
end
