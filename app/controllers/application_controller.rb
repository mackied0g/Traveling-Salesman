
class ApplicationController < ActionController::Base
    before_action :set_up_auth_variables
  
    def set_up_auth_variables
  
      @salesman_id = session["salesman_id"]
      @logged_in = !!@salesman_id
      if @logged_in
        @current_salesman = Salesman.find(@salesman_id)
      end
  
    end
  
    def authorized
      unless @logged_in
        return redirect_to salesman_path
      end
    end
  
    def logout
      session["salesman_id"] = nil
    end
    end