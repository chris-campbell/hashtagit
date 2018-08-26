class Page < ApplicationRecord
    
  def self.api_response(term)
    uri = "https://api.ritekit.com/v1/stats/history/#{term}?tags=&client_id="
    api = "71877ac7a47d252480110b17cb8cdfc5421e1c47dc8b"
    HTTParty.get(uri + api)
  end
  
end
