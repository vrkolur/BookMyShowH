class AddTheaterToShows < ActiveRecord::Migration[7.1]
  def change
    add_reference :shows, :theater, null: false, foreign_key: true
  end
end
