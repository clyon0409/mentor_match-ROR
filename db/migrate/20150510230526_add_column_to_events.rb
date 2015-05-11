class AddColumnToEvents < ActiveRecord::Migration
  def change
    add_column :events, :name, :string
    add_column :events, :date, :datetime
    add_column :events, :start, :datetime
    add_column :events, :end, :datetime
    add_column :events, :description, :string
    add_column :events, :location, :string
  end
end
