class UserType < ApplicationRecord
    validates :title, presence: true
    has_many :users
end
