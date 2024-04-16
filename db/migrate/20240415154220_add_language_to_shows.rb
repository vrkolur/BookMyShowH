class AddLanguageToShows < ActiveRecord::Migration[7.1]
  def change
    add_reference :shows, :language, null: false, foreign_key: true
  end
end
