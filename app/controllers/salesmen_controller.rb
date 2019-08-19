class SalesmenController < ApplicationController

    before_action :find_salesman, only: [:show, :edit, :update, :destroy]
        
        
        def index
            @salesmen = Salesman.all
        end
        
        def show
        
        end
        
        def new
            @saleman = Salesman.new
        end
        
        def create
            @salesman = Salesman.create(salesman_params)
            redirect_to @salesman 
        end
        
        def edit
        end
        
        def update
            @salesman.update(salesman_params)
            redirect_to @salesman
        end
        
        
        def destroy
            @salesman.destroy
            redirect_to salesmen_path
        end
        
        private
        
        def find_salesman
            @salesman = salesman.find(params[:id])
        end
        
        def salesman_params
            params.require(:salesman).permit(:name, :company)
        end
    
    end