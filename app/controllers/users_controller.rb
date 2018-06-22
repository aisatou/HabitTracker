class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    # byebug
     @user = User.new(user_params)
     if @user.valid?
    # #we can validate for uniqueness and not have to do a find or create by imo? but that's a design choice & i'm flexible
      @user.save
      log_in @user
    # #redirect to @user show page
      redirect_to @user
     else
    # #show error
      render :new
    # #redirect to new page
    end
  end


  #   @user = User.new(user_params)
  #
  #   if @user.valid?
  #     @user.save
  #     log_in @user
  #     flash[:success] = "Welcome!"
  #     # redirect_to @user
  #     redirect_to user_path(@user)
  #   else
  #     render :new
  #   end
  # end

  def edit
    #render edit page
  end

  def update
   user = User.find(params[:id])
   user.update(user_params)
   redirect_to user_path(user)
   #
  end

  private
    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation, :remember_digest)
    end

end
