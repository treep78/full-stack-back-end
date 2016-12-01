class Deck < ActiveRecord::Base
  has_many :cards, through: :card_links
  has_many :card_links, dependent: :destroy
end
