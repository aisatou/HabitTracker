class SessionsController < ApplicationController
#   def new
#   end
#
#   def create
#     return redirect_to(controller: 'sessions',
#       action: 'new') if !params[:name] || params[:name].empty?
#     session[:name] = params[:name]
#     redirect_to controller: 'application', action: 'hello'
#
#   @user = User.find_by(username: params[:username])
#   return head(:forbidden) unless @user.authenticate(params[:password])
#   session[:user_id] = @user.id
# end
#   end
#
#   def destroy
#     session.delete :name
#     redirect_to controller: 'application', action: 'hello'
#   end

  skip_before_action :logged_in?, only: [:create, :new]

  def new
    # Login
    render :new
  end

  def create
    @user = User.find_by(email: params[:email])
    # Does that user exist? && does it match the authorization
    if @user && @user.authenticate(params[:password])
      # byebug
      session[:user_id] = @user.id

      redirect_to user_path(@user)
  end

  #   def create
  # ?user = User.find_by(email: params[:session][:email].downcase)
  #   if ?user && ?user.authenticate(params[:session][:password])
  #     log_in ?user
  #     params[:session][:remember_me] == '1' ? remember(?user) : forget(?user)
  #     redirect_to ?user
  #   else
  #     flash.now[:danger] = 'Invalid email/password combination'
  #     render 'new'
  #   end
  # end
      # redirect_to login_path
    # POST of the login

  def destroy
    # Logging out
    # session.delete :user_id
    log_out if logged_in?
    # redirect_to root_url

    redirect_to login_path
  end

  private
  def user_params
    params.permit(:email, :password)
  end
end
end
