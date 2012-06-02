require 'tinder'

scott = Tinder::Campfire.new 'scottberkley', :token => ''
jane = Tinder::Campfire.new 'scottberkley', :token => ''
# or you can still use username/password and Tinder will look up your token
# campfire = Tinder::Campfire.new 'mysubdomain', :username => 'user', :password => 'pass'

room_s = scott.rooms.first

room_s.speak "Hi, my name's Scott"

room_j = jane.rooms.first

room_j.speak "Hi Scott, I'm Jane"
