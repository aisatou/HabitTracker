class ScheduleController < ApplicationController
  def new
    @schedule = Schedule.new
    @habits = Habit.all
  end

  def create
    @schedule = Schedule.new(schedule_params)
    if @schedule.valid?
    @schedule.save
    else
    render :new
    end
  end

  def show
    @schedule = Schedule.find(@schedule.id)
  end

  def update
    @schedule = Schedule.find(params[:id])
    if @schedule.update(schedule_params)
      redirect_to(@schedule)
    else
      render :edit
    end
  end

  def delete
    @schedule = Schedule.find(params[:id])
    @schedule.destroy
    #what should this render?
  end


  private
    def schedule_params
      params.require(:schedule).permit(:user_id, :habit_id)
    end

end
