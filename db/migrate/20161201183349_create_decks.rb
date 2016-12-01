class CreateDecks < ActiveRecord::Migration
  def change
    create_table :decks do |t|
      t.string :name
      t.text :description
      t.string :cards

      t.timestamps null: false
    end
  end
end
