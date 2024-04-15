class Language < ApplicationRecord
    validates :title, presence: true
    has_many :shows
end
