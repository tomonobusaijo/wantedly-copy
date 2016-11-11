class AddColumnToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :name, :string
    add_column :users, :gender, :integer, default: 0
    add_index  :users, :gender
    add_column :users, :birthday_year, :integer
    add_column :users, :birthday_month, :integer
    add_column :users, :birthday_day, :integer
    add_column :users, :works, :string
    add_column :users, :address, :string
    add_column :users, :catchcopy, :string
    add_column :users, :introduction, :text
  end
end
