class FleetsController < ApplicationController
    before_action :authenticate_user!

  def index
    @fleet = Fleet.new
    timeline_fleets
  end

  def create
    @fleet = current_user.fleets.new(fleet_params)

    if @fleet.save
      redirect_to fleets_path, notice: 'fleet was successfully created.'
    else
      timeline_fleets
      render :index, alert: 'fleet was not created.'
    end
  end

  private

  def timeline_fleets
    @timeline_fleets ||= Fleet.all.ordered_by_most_recent.includes(:user)
  end

  def fleet_params
    params.require(:fleet).permit(:title)
  end
end
