class QueriesController < ApplicationController
  
  def index
    @queries = Query.all
  end
  
  def new
    @query = Query.new
  end
  
  def create
    @query = Query.create(queries_params)
    
    if @query.save
      redirect_to root_path
    end
  end
  
  private
  
  def queries_params
    params.require(:query).permit(:time, :hastag, :tweet_sum, :retweet_sum, :exposure_sum)
  end
  
end
