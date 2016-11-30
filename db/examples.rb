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
    class: 'Rogue'
  },
  {
    name: 'Illusionist',
    class: 'Illusionist'
  },
  {
    name: 'Mesmer',
    class: 'Mesmer'
  },
  {
    name: 'Summoner',
    class: 'Summoner'
  },
  {
    name: 'Wizard',
    class: 'Wizard'
  },
  {
    name: 'Monk',
    class: 'Monk'
  },
  {
    name: 'Battle Mage',
    class: 'Battle Mage'
  },
  {
    name: 'Paladin',
    class: 'Paladin'
  },
  {
    name: 'Warrior',
    class: 'Warrior'
  },
  {
    name: 'Ranger',
    class: 'Ranger'
  },
  {
    name: 'Scout',
    class: 'Scout'
  }
  {
    name: 'Assassin',
    class: 'Assassin'
  }
])
