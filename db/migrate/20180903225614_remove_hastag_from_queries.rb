class RemoveHastagFromQueries < ActiveRecord::Migration[5.1]
  def change
    remove_column :queries, :hastag, :string
  end
end
