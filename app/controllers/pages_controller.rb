class PagesController < ApplicationController
  before_action :authenticate_user!

  
    def home

      gon.queries = $stats
    end
     
    def apiquery
        term = params[:query]
        $stats = HTTParty.get("https://api.ritekit.com/v1/stats/history/#{term}?tags=&client_id=71877ac7a47d252480110b17cb8cdfc5421e1c47dc8b")
        gon.queries = $stats
        
        respond_to do |format|
          format.js
          format.html
        end
    end
    
    
    def dashboard
      @queries = Query.all
    end
    
    private
    

    
end
