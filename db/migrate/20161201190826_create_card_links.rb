class CreateCardLinks < ActiveRecord::Migration
  def change
    create_table :card_links do |t|
      t.references :deck, index: true, foreign_key: true
      t.references :card, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
