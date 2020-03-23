class AddColumnsToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :age, :integer
    add_column :users, :phone_number, :string
    add_column :users, :location, :string
    add_column :users, :contractor, :boolean
    add_column :users, :contractor_name, :string
    add_column :users, :bio, :text
    add_column :users, :profile_picture, :string
    add_column :users, :logo, :string
  end
end
