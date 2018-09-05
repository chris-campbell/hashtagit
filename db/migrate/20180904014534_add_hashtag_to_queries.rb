class AddHashtagToQueries < ActiveRecord::Migration[5.1]
  def change
    add_column :queries, :hashtag, :string
  end
end
