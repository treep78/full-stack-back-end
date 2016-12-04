class AddUserToCardLinks < ActiveRecord::Migration
  def change
    add_reference :card_links, :user, index: true, foreign_key: true
  end
end
