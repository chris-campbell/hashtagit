class QueriesController < ApplicationController
  before_action :authenticate_user!
  
  def index
    search_term = params[:query]
    if search_term.present?
      @stats = Query.api_response(search_term)
    end

    respond_to do |format|
        format.js
        format.html
    end
  end
  
  def apiquery
    
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
  

  
 end
