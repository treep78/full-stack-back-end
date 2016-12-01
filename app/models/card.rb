class Card < ActiveRecord::Base
  has_many :decks, through: :card_links
  has_many :card_links, dependent: :destroy
end
