class SessionController < ApplicationController

  def new
  end

  def create
    @user = User.find_by(email: params[:email])
    if @user.try(:authenticate,params[:password])
      session[:current_user] = @user
      redirect_to root_path, notice: 'Logged in!'
    else
      flash[:alert] = 'Wrong info, dude'
      render :new
    end
  end

  #log the user out here

  def logout
    reset_session
    redirect_to root_path, notice: 'goodbye'
  end

   

end
