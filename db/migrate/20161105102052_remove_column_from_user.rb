class RemoveColumnFromUser < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :gender, :integer
  end
end
