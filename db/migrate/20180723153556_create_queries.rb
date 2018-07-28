class CreateQueries < ActiveRecord::Migration[5.1]
  def change
    create_table :queries do |t|
      t.string :time
      t.string :hastag
      t.integer :tweet_sum
      t.integer :retweet_sum
      t.integer :exposure_sum

      t.timestamps
    end
  end
end
