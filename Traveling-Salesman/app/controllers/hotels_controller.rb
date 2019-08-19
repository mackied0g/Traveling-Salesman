class HotelsController < ApplicationController

    before_action :find_hotel, only: [:show, :edit, :update, :destroy]
        
        
        def index
            @hotels = Hotel.all
        end
        
        def show
        
        end
        
        def new
            @hotel = Hotel.new
        end
        
        def create
            @hotel = Hotel.create(hotel_params)
            redirect_to @hotel 
        end
        
        def edit
        end
        
        def update
            @hotel.update(hotel_params)
            redirect_to @hotel
        end
        
        
        def destroy
            @hotel.destroy
            redirect_to hotels_path
        end


        
        private
        
        def find_hotel
            @hotel = hotel.find(params[:id])
        end
        
        def hotel_params
            params.require(:hotel).permit(:destination_id, :star_rating, :guest_rating, :is_available?)
        end
    
    end