class Theater < ApplicationRecord
    validates :name, presence: true, uniqueness: true
    validates :location_id, presence: true
    belongs_to :user
    belongs_to :location
    has_many :shows
end
