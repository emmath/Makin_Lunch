class CreateLunches < ActiveRecord::Migration
  def change
    create_table :lunches do |t|
      t.belongs_to :food
      t.belongs_to :meal
      t.string :occasion
      t.string :food_id
      t.string :meal_id
      t.datetime :date

      t.timestamps
    end
  end
end
