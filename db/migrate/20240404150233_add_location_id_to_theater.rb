class AddLocationIdToTheater < ActiveRecord::Migration[7.1]
  def change
    add_column :theaters, :location_id, :integer
  end
end
