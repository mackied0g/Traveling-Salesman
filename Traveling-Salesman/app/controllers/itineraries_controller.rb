class ItinerariesController < ApplicationController

    before_action :find_itinerary, only: [:show, :edit, :update, :destroy]
        
        
        def index
            @itineraries = Itinerary.all
        end
        
        def show
        
        end
        
        def new
            @itinerary = Itinerary.new
        end
        
        def create
            @itinerary = Itinerary.create(itinerary_params)
            redirect_to @itinerary 
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