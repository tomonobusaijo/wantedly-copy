class AddColumnToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :gender, :integer, null: false
  end
end
