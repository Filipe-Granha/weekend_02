require("minitest/autorun")
require("minitest/rg")
require_relative("../rooms")
require_relative("../guests")
require_relative("../songs")

class TestRooms < Minitest::Test

def setup
  @guest0 = Guests.new("John", 10, @song0)
  @guest1 = Guests.new("Jude", 11, @song1)
  @guest2 = Guests.new("Julian", 12, @song2)
  @guest3 = Guests.new("Jordan", 13, @song3)
  @guest4 = Guests.new("Julius", 14, @song4)
  @guest5 = Guests.new("Jade", 15, @song5)
  @guest_extra = Guests.new("Jason", 30, @song20)
  @guest_extra2 = Guests.new("Jamie", 40, @song30)
  @guests_a = [@guest0, @guest1, @guest2]
  @guests_b = [@guest3, @guest4, @guest5]
  @song0 = Songs.new("Radiohead", "Idioteque")
  @song1 = Songs.new("Coldplay", "Yellow")
  @song2 = Songs.new("U2", "Beautiful Day")
  @song3 = Songs.new("Outkast", "Ms Jackson")
  @song4 = Songs.new("Daft Punk", "One More Time")
  @song5 = Songs.new("Stan", "Eminem")
  @songs_a = [@song0, @song1, @song2]
  @songs_b = [@song3, @song4, @song5]
  @room1 = Rooms.new("Rock Room", @guests_a, @songs_a, 5)
  @room2 = Rooms.new("Alternative Room", @guests_b, @songs_b, 5)
end

def test_room_has_name
  assert_equal("Rock Room", @room1.name)
end

def test_room_has_guests
  assert_equal(@guests_a, @room1.guests)
end

def test_room_has_songs
  assert_equal(@songs_a, @room1.songs)
end


def test_room_has_entry_fee
  assert_equal(5, @room1.entry_fee)
end


def test_total_guests_in_room
 assert_equal(3, @room1.total_guests)
end


def test_check_in_to_room
 @room1.check_in(@guest_extra)
 assert_equal(4, @room1.total_guests)
end


def test_check_out_from_room
 @room1.check_in(@guest_extra)
 @room1.check_out(@guest0)
 assert_equal(3, @room1.total_guests)
end
# Can I check out and get 3, without having to call the check in method again? Why doesn't the number of elements in the array stay 4, after the check in?






end