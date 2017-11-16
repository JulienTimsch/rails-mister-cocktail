class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient
  validates :description, presence: true#, inclusion: { in: INGREDIENTS }
  validates :ingredient, presence: true
  validates :cocktail, presence: true, uniqueness: { scope: :ingredient }
end



