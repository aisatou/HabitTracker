class SessionsController < ApplicationController
  skip_before_action :logged_in?, only: [:create, :new]

  def new
    # Login
    render :new
  end

  def create
    @user = User.find_by(email: params[:email])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      redirect_to login_path
    end
    # POST of the login
  end

  def destroy
    session.delete :user_id
    redirect_to login_path
  end

  private
  def user_params
    params.permit(:email, :password)
  end
end
