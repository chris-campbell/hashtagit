class PagesController < ApplicationController
  before_action :authenticate_user!

  def dashboard
    @queries = Query.all
  end

end
