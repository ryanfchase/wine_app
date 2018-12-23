NUM_ITEMS = 10

EVENT_DESCRIPTIONS = NUM_ITEMS.times.map { Faker::Hipster.sentence } 
EVENT_TAGS = NUM_ITEMS.times.map{ Faker::Lorem.word } 
EMAILS = ['george@example.com', 'bob@example.com'] 

SPLIT = 0.4
OFFSET = EVENT_DESCRIPTIONS.length * SPLIT

EVENT_USERS = { 
  'george@example.com': { descriptions: EVENT_DESCRIPTIONS[0, OFFSET], tags: EVENT_TAGS[0, OFFSET] },
  'bob@example.com': { descriptions: EVENT_DESCRIPTIONS[OFFSET..-1], tags: EVENT_TAGS[OFFSET..-1] },
}

EVENT_USERS.each do |email, pair|
  user = User.new(email: email, password: 'asdfasdf')
  
  (1..NUM_ITEMS).each do |i|
    description = pair[:descriptions][i]
    tag = pair[:tags][i]
    user.events.build(description: description, tag: tag)
  end

  user.save
end


