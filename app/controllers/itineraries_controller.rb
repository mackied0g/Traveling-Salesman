class ItinerariesController < ApplicationController

    before_action :find_itinerary, only: [:show, :edit, :update, :destroy]
        
        
        def index
            @itineraries = Itinerary.all
        end
        
        def show
        
        end
        
        def new
            @itinerary = Itinerary.new
            @destinations = Destination.all
            @salesmen = Salesman.all
            @flights = Flight.all
            @hotels = Hotel.all
        end
        
 

        def create
            @itinerary = Itinerary.new(itinerary_params)
            @itinerary.salesman = @current_salesman
            if @itinerary.valid? 

                @itinerary.save
             redirect_to @current_salesman
            else 
                flash[:errors] = @itenerary.errors.full_messages
                redirect_to new_itinerary_path

            end
          end
        
        def edit
        end
        
        def update
            @saleman.update(itinerary_params)
            redirect_to @itinerary
        end
        
        
        def destroy
            @itinerary.destroy
            redirect_to itineraries_path
        end
        
        private
        
        def find_itinerary
            @itinerary = Itinerary.find(params[:id])
        end
        
        def itinerary_params
            params.require(:itinerary).permit(:destination_id, :salesman_id, :flight_id, :hotel_id)
        end
    
    end