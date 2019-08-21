
class ApplicationController < ActionController::Base
    before_action :set_up_auth_variables
  
    def set_up_auth_variables
  
      @salesman_id = session["salesman_id"]
      @logged_in = !!@salesman_id
      if @logged_in
        @current_salesman = salesman.find(@salesman_id)
        @can_book_itinerary = @current_salesman.can_book_itinerary
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