class Food < ActiveRecord::Base
  attr_accessible :vegetable
  has_many :ingredientships
  has_many :meals, through: :ingredientships
end
