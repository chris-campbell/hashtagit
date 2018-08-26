class PagesController < ApplicationController
  before_action :authenticate_user!

    def home
        gon.queries = $stats
    end
     
    def apiquery
        search_term = params[:query]
        @stats = Page.api_response(search_term)
        gon.queries = @stats
        
        respond_to do |format|
          format.js
          format.html
        end
    end
    
    def dashboard
      @queries = Query.all
    end
  
end
