class Cocktail < ApplicationRecord
  validates :name, presence: true, uniqueness: true, allow_nil: false
end
