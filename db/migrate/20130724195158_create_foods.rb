class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.string :vegetable

      t.timestamps
    end
  end
end
