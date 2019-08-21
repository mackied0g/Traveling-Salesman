class SalesmenController < ApplicationController

    before_action :find_salesman, only: [:show, :edit, :update, :destroy]
        
        
        def index
           # link_to "Profile", salesman_path(@salesman)
        end
        
        def show
        
        end
        
        def new
            @salesman = Salesman.new
        end
        
        def create
            @salesman = Salesman.create(salesman_params)

            if @salesman.valid?
              session["salesman_id"] = @salesman.id
              flash[:message] = "Created #{@salesman.name}"
              redirect_to salesman_path(@salesman)
            else
              flash[:message] = "Invalid login credentials. Please try again."
              redirect_to new_salesman_path
            end
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
            params.require(:salesman).permit(:name, :company, :email, :password)

        end
    
    end