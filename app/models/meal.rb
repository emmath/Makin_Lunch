class Meal < ActiveRecord::Base
  attr_accessible :dish
  has_many :lunches
  has_many :foods, through: :lunches
end
