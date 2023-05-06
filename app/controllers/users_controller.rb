class UsersController < ApplicationController

  def index

  end
  
  def new
  end

  def create
    user = User.new(name: params[:name], email: params[:email], password: params[:password])
    debugger
    if user.save
      flash[:notice] = "ユーザ登録に成功しました"
      redirect_to "/users/index"
    end
  end
end
