class ShiftsController < ApplicationController
  before_action :require_login

  def index
    render :json => current_user.shifts
  end

  def link_params
    params.require(:shift).permit(:user_id, :start_at, :end_at, :role)
  end
end
