require 'tinder'

File.open('/home/scott/workspace/psych-chat/config/user_keys/jane') do |key|
  JANE_API_KEY = key.gets
end
jane = Tinder::Campfire.new 'scottberkley', :token => JANE_API_KEY

puts "started"
room = jane.rooms.first
puts room.name

room.listen do |m|
  puts m[:body]
  room.speak 'Welcome!' if m[:body] =~ /hello/i
end

puts "done"
