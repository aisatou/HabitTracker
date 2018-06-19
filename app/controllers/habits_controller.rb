class HabitsController < ApplicationController
  def index
    @habits = Habits.all
  end

  def new
    @habit = Habit.new
    #validate habit based on.........
    #save habit if valid
    #if not valid redirect
  end

  def create
    #if habit is valid save it
    #otherwise redirect
  end

  def show
    @habit = Habit.find(params[:id])
  end

  # matt was saying that through our relationship this might cause the habit to change for other users, so being able to edit from schedule would keep it from changing for other users
  # def update
  #
  # end
  #
  # def destroy
  #
  # end

  private
    def habit_params
      params.require(:user).permit(:name, :description)
    end
end
