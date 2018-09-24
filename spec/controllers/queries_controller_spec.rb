require 'rails_helper'

RSpec.describe QueriesController, type: :controller do

  describe 'queries#index' do
    it 'should successfully show page' do
      get :index
      expect(response).to have_http_status(302)
    end
  end

  describe 'queries#apiquery' do
    it 'should successfully spam' do
      get :apiquery
      expect(response).to have_http_status(302)
    end
  end

  describe 'queries#create' do
    it 'should require user to be signed in' do
      post :create, params: { query: { tweet_sum: 444, retweet_sum: 3331,
                              exposure_sum: 6010, hashtag: 'blacklove' } }
      expect(response).to redirect_to new_user_session_path
    end

    it 'should create a query in the database' do
      user = FactoryBot.create(:user)
      sign_in user

      post :create, params: {
        query: {
          tweet_sum: 444,
          retweet_sum: 3031,
          exposure_sum: 6010,
          hashtag: 'blacklove'
        }
      }

      expect(response).to redirect_to root_path
      query = Query.last
      expect(query.hashtag).to eq('blacklove')
      expect(Query.count).to eq 1
    end
  end
end
