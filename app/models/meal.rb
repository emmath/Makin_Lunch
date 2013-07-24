class Meal < ActiveRecord::Base
  attr_accessible :dish
  has_many :ingredientships
  has_many :foods, through: :ingredientships
end
