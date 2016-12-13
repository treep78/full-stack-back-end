# frozen_string_literal: true
# This file should contain all the record creation needed to experiment with
# your app during development.
#
# The data can then be loaded with the rake db:examples (or created alongside
# the db with db:nuke_pave).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# %w(antony jeff matt jason).each do |name|
#   email = "#{name}@#{name}.com"
#   next if User.exists? email: email
#   User.create!(email: email,
#                password: 'abc123',
#                password_confirmation: nil)
# end

Card.create([
  {
    name: 'Rogue',
    card_class: 'Rogue'
  },
  {
    name: 'Illusionist',
    card_class: 'Illusionist'
  },
  {
    name: 'Mesmer',
    card_class: 'Mesmer'
  },
  {
    name: 'Summoner',
    card_class: 'Summoner'
  },
  {
    name: 'Wizard',
    card_class: 'Wizard'
  },
  {
    name: 'Monk',
    card_class: 'Monk'
  },
  {
    name: 'Battle Mage',
    card_class: 'Battle Mage'
  },
  {
    name: 'Paladin',
    card_class: 'Paladin'
  },
  {
    name: 'Warrior',
    card_class: 'Warrior'
  },
  {
    name: 'Ranger',
    card_class: 'Ranger'
  },
  {
    name: 'Scout',
    card_class: 'Scout'
  },
  {
    name: 'Assassin',
    card_class: 'Assassin'
  }
])

Combination.create([
  {
    first_card_class: 'Assassin',
    second_card_class: 'Illusionist',
    result: 'Rogue'
  },
  {
    first_card_class: 'Illusionist',
    second_card_class: 'Assassin',
    result: 'Rogue'
  },
  {
    first_card_class: 'Scout',
    second_card_class: 'Mesmer',
    result: 'Rogue'
  },
  {
    first_card_class: 'Mesmer',
    second_card_class: 'Scout',
    result: 'Rogue'
  },
])
Deck.create([
  {
    name:'Deck1',
    description: 'A deck of cards'
  }
])
