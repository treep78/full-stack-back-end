class CreateHands < ActiveRecord::Migration
  def change
    create_table :hands do |t|
      t.string :card

      t.timestamps null: false
    end
  end
end
