# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

EVENT_DESCRIPTIONS = 10.times.map { Faker::Hipster.sentence }
EVENT_TAGS = 10.times.map{ Faker::Lorem.word }

SPLIT = 0.4
OFFSET = EVENT_DESCRIPTIONS.length * SPLIT

EVENT_USERS = { 
  'george@example.com': EVENT_DESCRIPTIONS[0, OFFSET],
  'bob@example.com': EVENT_DESCRIPTIONS[OFFSET..-1],
  'george@example.com': EVENT_TAGS[0, OFFSET],
  'bob@example.com': EVENT_TAGS[OFFSET..-1]
}

EVENT_USERS.each do |email, events|
  user = User.new(email: email, password: 'asdfasdf')
  events.each { |description, tag| user.events.build(description: description, tag: tag) }
  user.save
end

