class UsersController < ApplicationController
  def new
  end

  def create
    puts 'start create !!!!!!!'
    new_user = User.new(name: params[:name],
                      email: params[:email],
                      password: params[:password],
                      password_confirmation: params[:password_confirmation] )

    if new_user.save
      puts "create success!!!!!!!!!!"
      session[:user_id] = new_user.id
      flash[:notice] = "ユーザー登録成功しました"
      redirect_to "/"
    else
      puts "create failed !!!!!!!!"
      flash[:notice] = "ユーザー登録失敗しました"
      render new_user
    end
  end

  def sign_in
  end

  def login
    login_user = User.find_by(email: params[:email])
    puts "params[:email]:#{params[:email]}"
    puts "params[:password]:#{params[:password]}"
    puts "email:#{login_user.email}"
    puts "password:#{login_user.password}"
    if login_user.authenticate(params[:password])
      session[:user_id] = login_user.id
      flash[:notice] = "ログインしました"
      puts "login success!!!!!!!!!!"
      redirect_to "/"
    else
      flash[:notice] = "ログイン失敗しました"
      puts "login failed!!!!!!!!!!"
      render "/users/sign_in"
    end
  end

  def show
    @login_user = User.find_by(id: session[:user_id])
  end

  def profile
    @login_user = User.find_by(id: session[:user_id])
  end

  def profile_edit
    puts "profile_edit start !!!!!!"
    update_user = User.find_by(id: params[:id])
    update_user.name = params[:name]
    update_user.self_introduction = params[:self_introduction]

    if update_user.save
      flash[:notice] = "更新成功しました"
      render "/users/#{update_user.id}/profile"
    else
      flash[:notice] = "更新失敗しました"
      render "/users/#{update_user.id}/profile"
    end
  end

  def posts
    puts 'start users#posts !!!!!!!!!!'
    @user_id = 1 #test code.
    @regist_hotels = Hotel.where(user_id: @user_id)
  end

  def destroy
    session[:user_id] = nil
    redirect_to "/"
  end

  def user_params
    params.require(:user).permit(:name, :email, :password, :img)
  end
end
