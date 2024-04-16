class AddMovieToShows < ActiveRecord::Migration[7.1]
  def change
    add_reference :shows, :movie, null: false, foreign_key: true
  end
end
