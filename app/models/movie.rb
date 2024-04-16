class Movie < ApplicationRecord
    validates :name,presence: true
    validates :about,presence: true
    validates :genre,presence: true
    validates :runtime, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 30 }
    validates :picture,presence: true
    has_one_attached :picture
end
