require("minitest/autorun")
require("minitest/rg")

require_relative("../karaoke_bar.rb")
require_relative("../room.rb")
require_relative("../guest.rb")
require_relative("../song.rb")

class BarTest<Minitest::Test

  def setup
    @bar = Bar.new("Karaoke Go!", [], 0)
    @guest = Guest.new("Curly Boy", 50)
    @song = Song.new("Technologic", "Daft Punk")
    @room1 = Room.new(1, 20, [], [], 5)
    @room2 = Room.new(2, 10, [], [], 5)
    @room3 = Room.new(3, 5, [], [], 5)
  end

  def test_bar_has_name
    assert_equal("Karaoke Go!", @bar.name)
  end

  #
  def test_bar_has_rooms
    assert_equal([], @bar.rooms)
  end
  #
  def test_bar_has_empty_till
    assert_equal(0, @bar.till)
  end

  def test_check_in_guest
  @rooms = [@room1, @room2, @room3]
  @bar.check_in_guest(@guest, @room1)
  assert_equal(1, @room1.guests.count)
  assert_equal(45, @guest.wallet)
  assert_equal(5, @bar.till)
  end

end
