require("minitest/autorun")
require("minitest/rg")

require_relative("../room.rb")
require_relative("../guest.rb")
require_relative("../song.rb")

class RoomTest<Minitest::Test

  def setup
    @room = Room.new(1, 0, [], [])
    @guest = Guest.new("Curly Boy", 50)
    @guest2 = Guest.new("Richard", 40)
    @guest3 = Guest.new("Blorp", 30)
    @song = Song.new("Technologic", "Daft Punk")
  end

def test_room_has_number
  assert_equal(1, @room.number)
end

def test_room_has_capacity
  assert_equal(0, @room.capacity)
end

def test_songbook_starts_empty
  assert_equal([], @room.songbook)
end

def test_room_contains_guests
  @room.add_guest_to_room(@guest)
  assert_equal(1, @room.guests.count)
end

def test_room_contains_no_guests
  @room.add_guest_to_room(@guest)
  @room.remove_guest_from_room(@guest)
  assert_equal(0, @room.guests.count)
end

def test_add_songs_to_room
  @room.add_songs(@song)
  assert_equal(1, @room.songbook.count)
end

def test_room_is_full
  @room.add_guest_to_room(@guest)
  @room.add_guest_to_room(@guest2)
  @room.add_guest_to_room(@guest3)
  assert_equal("Sorry, this room is full!", @room.room_is_full)
end
end
