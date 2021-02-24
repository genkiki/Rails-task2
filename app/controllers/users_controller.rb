class UsersController < ApplicationController
  def new
    @user = User.new
  end
  def create
    puts 'start create !!!!!!!'
    @user = User.new(name: params[:name], email: params[:email], password: params[:password])

    check_pass = params[:password] == params[:password_confirmation]
    puts "check_pass:#{check_pass}"
    if check_pass && @user.save
      puts "create success!!!!!!!!!!"
      redirect_to "/"
    else
      puts "create failed !!!!!!!!"
      redirect_to '/users/new'
    end
  end
end
