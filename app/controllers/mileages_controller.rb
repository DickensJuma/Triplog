class MileagesController < ApplicationController
    def create
        @mileage = Mileage.new(mileage_params)
        @mileage.fleet_id = params[:fleet_id]
        @mileage.user = current_user
    
        if @mileage.save
          redirect_to fleets_path, notice: 'Mileage was successfully created.'
        else
          redirect_to fleets_path, alert: @mileage.errors.full_messages.join('. ').to_s
        end
      end
    
      private
    
      def mileage_params
        params.require(:mileage).permit(:distance)
      end
end
