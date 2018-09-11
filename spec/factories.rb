FactoryBot.define do
  
  factory :user do
    sequence :email do |n|
      "dummyEmail#{n}@gmail.com"
    end
    password "secretPassword"
    password_confirmation "secretPassword"
  end
  
  factory :query do
    tweet_sum 0
    retweet_sum 0
    exposure_sum 0
    hashtag 'blacklove'
  end
  
end

