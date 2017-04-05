class Recipe < ApplicationRecord
    validates :title, presence: true, length: {minimum: 5 }
    validates :ingredients, presence: true, length: {minimum: 10 }
    validates :directions, presence: true, length: {minimum: 5 }
end
