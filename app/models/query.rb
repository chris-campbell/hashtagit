class Query < ApplicationRecord
  
  # Retrieve JSON response based on user input.  
  def self.api_response(term)
    url = "https://api.ritekit.com/v1/stats/history/#{term}?tags=&client_id="
    api = "38eae4081cf927bfba61c378a89dc3cd820c8696b5dd"
    return HTTParty.get(url + api)
  end
  
  # Format raw numerical sum value.
  def format_results(value)
    result = 0
    
    if value != nil
      if ( value == 0)
          return "N/A"
      end
     
      if ( value < 1000 && value > 0)
  	    return value.to_s
      end
      
      if ( value > 1000 && value < 1000000 )
          result = value / 1000
          result = '%.1f' % result
          return result.to_s + 'K';
      end
      
      if ( value > 1000000 && value < 1000000000 )
          result = value / 1000000
          result = '%.1f' % result
          return result.to_s + "M";
      end
      
      if ( value > 100000000 && value < 100000000000 )
          result = value / 1000000000
          result = '%.1f' % result
          return result.to_s + "B";
      end
      
      if ( value < 1000 && value > 0)
          return value.to_s
      end
      
    end
  end
  
end
