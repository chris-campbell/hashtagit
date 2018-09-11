require 'rails_helper'

RSpec.describe QueriesController, type: :controller do
    
    describe 'queries#index' do 
        it "Should successfully show page" do
            get :index
            expect(response).to have_http_status(302)
        end
    end
    
    describe 'queries#apiquery' do
        it "Should successfully spam" do
            get :apiquery
            expect(response).to have_http_status(302)
        end
    end
    
    describe 'queries#create' do
        it "Should require user to be signed in" do
            post :create, params: { query: { tweet_sum: 444, retweet_sum: 0331,
            exposure_sum: 0610, hashtag: 'blacklove' } }
            expect(response).to redirect_to new_user_session_path
        end
        
        it "Should create a query in the database" do
            user = FactoryBot.create(:user)
            sign_in user
            
            post :create, params: {
                query: { 
                    tweet_sum: 444, 
                    retweet_sum: 0331,
                    exposure_sum: 0610,
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
