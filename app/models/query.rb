class Query < ApplicationRecord
    
  def self.api_response(term)
    url = "https://api.ritekit.com/v1/stats/history/#{term}?tags=&client_id="
    api = "38eae4081cf927bfba61c378a89dc3cd820c8696b5dd"
    return HTTParty.get(url + api)
  end
  
end
