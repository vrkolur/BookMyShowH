class RemoveLocationFromTheater < ActiveRecord::Migration[7.1]
  def change
    remove_column :theaters, :location, :string
  end
end
