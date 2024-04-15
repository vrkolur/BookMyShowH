class Show < ApplicationRecord
    validates :name, presence: true 
    validates :runtime, presence:true, numericality: { only_integer: true, greater_than: 30 }
    validates :time, presence:true, numericality: { only_integer: true, greater_than: 0 }
    validates :about, presence: true
    validates :gener, presence: true
    validates :theater_id, presence: true
    validates :language_id, presence: true
    belongs_to :theater 
    belongs_to :language 
    has_one_attached :image
end
