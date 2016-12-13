class CardLink < ActiveRecord::Base
  belongs_to :deck, inverse_of: :card_links
  belongs_to :card, inverse_of: :card_links
  belongs_to :user, inverse_of: :card_links
  validates :user, presence: true
end
