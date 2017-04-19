class Recipe < ApplicationRecord
    # validates :name, presence: true, length: {minimum: 5 }
    # validates :ingredients, presence: true, length: {minimum: 10 }
    # validates :directions, presence: true, length: {minimum: 5 }
    validates :user, presence: true, length: {minimum: 2}
end
