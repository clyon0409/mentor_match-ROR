class AddColumnToUsers < ActiveRecord::Migration
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :employee_id, :string
    add_column :users, :department, :string
    add_column :users, :extension, :number
    add_column :users, :title, :string
    add_column :users, :description, :string
    add_column :users, :role, :string
  end
end
