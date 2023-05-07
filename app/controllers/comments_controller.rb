class CommentsController < ApplicationController
  def index
  end

  def new
  end

  def create
    comment = Comment.new(user_id: @current_user.id, post_id: params[:post_id], content: params[:comment][:content])

    if comment.save
      flash[:notice] = "コメントが成功しました"
      redirect_to "/posts_#{params[:post_id]}"
    end
  end

  def delete
  end
end
