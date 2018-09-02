class PagesController < ApplicationController
  before_action :authenticate_user!

    
    def home
       
        
        
    end
     
    def apiquery
      
    end
    
    def dashboard
      @queries = Query.all
    end
    
    private
    
    def query_params
      params[:query]
    end
  
end
