class CardSerializer < ActiveModel::Serializer
  attributes :id, :name, :card_class, :decks, :editable

  def editable
    # scope == object.user
  end
end
