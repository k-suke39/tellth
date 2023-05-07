class UsersController < ApplicationController

  def index

  end

  def new
  end

  def create
    user = User.new(name: params[:name], email: params[:email], password: params[:password])
    debugger
    if user.save
      session[:user_id] = user.id
      flash[:notice] = "ユーザ登録に成功しました"
      redirect_to "/posts"
    end
  end

  def login_form

  end

  def login
    user = User.find_by(email: params[:email])
    if user.password == params[:password]
      session[:user_id] = user.id
      flash[:notice] = "ログインに成功しました"
      redirect_to "/posts"
    end
  end

  def logout
    session[:user_id] = nil
    flash[:notice] = "ログアウトに成功しました"
    redirect_to "/login"
  end
end
