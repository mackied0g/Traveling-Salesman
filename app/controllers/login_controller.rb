class LoginController < ApplicationController

    def new
      # gets the form
    end
  
    def create
      # check the information inside the form
      @user = User.find_by(email: params[:email])
      if @user && @user.authenticate(params[:password])
        session["user_id"] = @user.id
        flash[:message] = "Logging in #{@user.name}"
        redirect_to destinations_path
      else
        flash[:message] = "Incorrect email or password"
        redirect_to "/welcome"
      end
    end
  
    def destroy
      logout
      redirect_to destination_path
    end

  
  
  
  
  
  
  end