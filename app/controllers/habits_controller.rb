class HabitsController < ApplicationController

  def index
    @habits = Habit.all
  end

  def show
    @habit = Habit.find(params[:id])
  end

  def new
    @habit = Habit.new
    # byebug
    #validate habit based on.........
    #save habit if valid
    #if not valid redirect
  end

  def create
    @habit = Habit.create(habit_params)
    redirect_to habit_path(@habit)
    #if habit is valid save it
    #otherwise redirect
  end

  def edit
      @habit = Habit.find(params[:id])
  end

  def update
      @habit = Habit.find(params[:id])
      @habit.update(habit_params)
      redirect_to habit_path(@habit)
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
      params.require(:habit).permit(:name, :description)
    end
end
