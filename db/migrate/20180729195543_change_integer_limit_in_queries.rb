class ChangeIntegerLimitInQueries < ActiveRecord::Migration[5.1]
  def change
    change_column :queries, :exposure_sum, :integer, limit: 8
    change_column :queries, :retweet_sum, :integer, limit: 8
    change_column :queries, :tweet_sum, :integer, limit: 8
  end
end
