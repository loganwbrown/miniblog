class UsersController < ApplicationController
  def new
    reset_session
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path, notice: 'Welcome to the club'
    else
      flash[:alert] = 'Oops, that did not work so well'
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :age, :password, :password_confirmation)
  end
end