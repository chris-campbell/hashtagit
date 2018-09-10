FactoryBot.define do
  
  factory :user do
    sequence :email do |n|
      "dummyEmail#{n}@gmail.com"
    end
    password "secretPassword"
    password_confirmation "secretPassword"
  end
  
  factory :query do
    tweet_sum 444
    retweet_sum 0331
    exposure_sum 0610
    hashtag 'blacklove'
    
    association :user
  end
  
end

