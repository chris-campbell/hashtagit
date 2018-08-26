class QueriesController < ApplicationController
  
  def index
  end
  
  def show
    @query = Query.find(params[:id])
  end
  
  def new
    @query = Query.new
  end
  
  def create
    @query = Query.create(queries_params)
    
    @query.save
      redirect_to root_path
  
  end
  
 
  
  private
  
  def queries_params
    params.permit(:time, :hastag, :tweet_sum, :retweet_sum, :exposure_sum)
  end
  
end
