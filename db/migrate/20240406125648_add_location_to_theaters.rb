class AddLocationToTheaters < ActiveRecord::Migration[7.1]
  def change
    add_reference :theaters, :location, null: false, foreign_key: true
  end
end
