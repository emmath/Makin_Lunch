class Food < ActiveRecord::Base
  attr_accessible :vegetable
  has_many :lunches
  has_many :meals, through: :lunches
end
