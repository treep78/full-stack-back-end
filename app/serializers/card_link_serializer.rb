class CardLinkSerializer < ActiveModel::Serializer
  attributes :id, :editable
  has_one :deck
  has_one :card

  def editable
    scope == object.user
  end
end
