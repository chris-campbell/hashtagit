class RemoveTimeFromQueries < ActiveRecord::Migration[5.1]
  def change
    remove_column :queries, :time, :string
  end
end
