class CreateIngredientships < ActiveRecord::Migration
  def change
    create_table :ingredientships do |t|
      t.integer :amount
      t.string :style

      t.timestamps
    end
  end
end
