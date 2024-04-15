class AddUserToTheaters < ActiveRecord::Migration[7.1]
  def change
    add_reference :theaters, :user, null: false, foreign_key: true
  end
end
