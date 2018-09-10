class QueriesController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @queries = Query.all
  end
  
  def apiquery
    search_term = params[:query]
    if search_term.present?
      @stats = Query.api_response(search_term)
    end

    respond_to do |format|
        format.js
        format.html 
    end
  end

  def create
    @query = Query.create(queries_params)
    
    @query.save
    redirect_to root_path
  end
  
  private
  
  def queries_params
    params.require(:query).permit(:time, :tweet_sum, :retweet_sum, :exposure_sum, :hashtag)
  end
  
end
