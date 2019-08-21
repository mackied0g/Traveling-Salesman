class LoginController < ApplicationController

    def new
      # gets the form
    end
  
    def create
      # check the information inside the form
      @salesman = Salesman.find_by(email: params[:email])
      if @salesman && @salesman.authenticate(params[:password])
        session["salesman_id"] = @salesman.id
        flash[:message] = "Logging in #{@salesman.name}"
        redirect_to salesman_path
      else
        flash[:message] = "Incorrect email or password. Try creating a new account."
        redirect_to "/login"
      end
    end
  
    def destroy
      logout
      redirect_to login_path
    end
  
  
  
  end