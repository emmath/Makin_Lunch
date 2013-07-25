class Lunch < ActiveRecord::Base
  attr_accessible :date, :food_id, :meal_id, :occasion
  belongs_to :food
  belongs_to :meal
end
