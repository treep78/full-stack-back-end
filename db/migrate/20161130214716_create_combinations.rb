class CreateCombinations < ActiveRecord::Migration
  def change
    create_table :combinations do |t|
      t.string :first_card_class
      t.string :second_card_class
      t.string :result

      t.timestamps null: false
    end
  end
end
