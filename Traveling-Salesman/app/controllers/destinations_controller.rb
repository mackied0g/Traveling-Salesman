class destinationsController < ApplicationController

    before_action :find_destination, only: [:show, :edit, :update, :destroy]
        
        
        def index
            @destinations = Destination.all
        end
        
        def show
        
        end
        
        def new
            @destination = Destination.new
        end
        
        def create
            @destination = Destination.create(destination_params)
            redirect_to @destination 
        end
        
        def edit
        end
        
        def update
            @destination.update(destination_params)
            redirect_to @destination
        end
        
        
        def destroy
            @destination.destroy
            redirect_to destinations_path
        end

        
        
        private
        
        def find_destination
            @destination = Destination.find(params[:id])
        end
        
        def destination_params
            params.require(:destination).permit(:location, :about_info)
        end
    
    end