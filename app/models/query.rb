class Query < ApplicationRecord

  validates :tweet_sum, presence: true
  validates :retweet_sum, presence: true
  validates :exposure_sum, presence: true
  validates :hashtag, presence: true

  # Retrieve JSON response based on user input.
  def self.api_response(term)
    url = "https://api.ritekit.com/v1/stats/history/#{term}?tags=&client_id="
    api = '38eae4081cf927bfba61c378a89dc3cd820c8696b5dd'
    HTTParty.get(url + api)
  end

  # Format raw numerical sum value.
  def format_results(value)
      value = value.to_i
      
      if  value == 0
        return "N/A"
      end
      
      if value > 1000 && value < 1000000
        result = value / 1000
        result = '%.1f' % result
        return result.to_s + 'K'
      end

      if value > 1000000 && value < 1000000000
        result = value / 1000000
        result = '%.1f' % result
        return result.to_s + 'M'
      end

      if value > 1000000 && value < 100000000000
        result = value / 1000000000
        result = '%.1f' % result
        return result.to_s + 'B'
      end

      if value < 1000 && value > 0
        return value.to_s
      end

    
  end
  
  def not_available(value)
    if value.nil?
      return 'N/A'
    else
      return value
    end
  end
  
  def value_less_than_1000(value)
    if value < 1000 && value > 0
      return value.to_s
    end
  end
  
end
