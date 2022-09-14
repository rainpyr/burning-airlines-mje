class ReservationsController < ApplicationController
  # React frontend, so we wont have this token
  skip_before_action :verify_authenticity_token, raise:false

    def index

        headers['Access-Control-Allow-Origin'] = '*'
        # headers['Access-Control-Allow-Orgin'] = '*'

        render json: Reservation.all

    end  #index

    def create 
        headers['Access-Control-Allow-Origin'] = '*'
        reservation = Reservation.create 

        if reservation.present?
            #send the created reservation object to JSON
            render json: reservation
        else
            #error message
            render json: {error: 'Could not create reservation'}, status: 422
        end #if statement

    end # create 

end
