class Attend < ApplicationRecord

    validates :name, presence: true
    validates :gender, presence: true
    validates :location, presence: true
end
