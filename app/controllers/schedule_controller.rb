class ScheduleController < ApplicationController

  private
    def schedule_params
      params.require(:schedule).permit(:user_id, :habit_id)
    end

end
