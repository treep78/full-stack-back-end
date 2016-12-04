class CardSerializer < ActiveModel::Serializer
  attributes :id, :name, :card_class, :decks
end
