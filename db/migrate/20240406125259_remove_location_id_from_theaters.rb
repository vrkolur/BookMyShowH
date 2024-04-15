class RemoveLocationIdFromTheaters < ActiveRecord::Migration[7.1]
  def change
    remove_column :theaters, :location_id, :integer
  end
end
