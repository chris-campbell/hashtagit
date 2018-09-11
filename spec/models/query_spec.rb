require 'rails_helper'

RSpec.describe Query, type: :model do
  describe 'format_results' do

    it 'should should N/A if value is equal to 0' do
      query = FactoryBot.create(:query)
      value = query.tweet_sum
      expect(query.format_results(value)).to eq 'N/A'
    end

    it 'should return value if value is less 1000 & greater than 0' do
      query = FactoryBot.create(:query, tweet_sum: 435)
      value = query.tweet_sum
      expect(query.format_results(value)).to eq '435'
    end

    it 'appended K if greater than 1000 and less than 1000000' do
      query = FactoryBot.create(:query, tweet_sum: 1001)
      value = query.tweet_sum
      expect(query.format_results(value)).to eq '1.0K'
    end

    it 'appened M if greater 1000000 and less than 1000000000' do
      query = FactoryBot.create(:query, tweet_sum: 1000001)
      value = query.tweet_sum
      expect(query.format_results(value)).to eq '1.0M'
    end

    it 'appended B if greater 100000000 and less than 100000000000' do
      query = FactoryBot.create(:query, tweet_sum: 1000001)
      value = query.tweet_sum
      expect(query.format_results(value)).to eq '1.0B'
    end
  end
end
