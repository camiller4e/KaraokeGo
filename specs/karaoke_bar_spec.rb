require("minitest/autorun")
require("minitest/rg")

require_relative("../karaoke_bar.rb")
require_relative("../room.rb")
require_relative("../guest.rb")
require_relative("../song.rb")
require_relative("../bouncer.rb")

class BarTest<Minitest::Test

  def setup
    @bar = Bar.new("Karaoke Go!", [], 0, 5)
    @bouncer = Bouncer.new("Big Leon")
    @guest = Guest.new("Curly Boy", 50, "Heart Shaker")
    @guest2 = Guest.new("Richard", 40, "I Love My Computer")
    @guest3 = Guest.new("Blorp", 30, "Technologic")
    @song = Song.new("Technologic", "Daft Punk")
    @song2 = Song.new("I Love My Computer", "Bad Religion")
    @song3 = Song.new("Computer Blue", "Prince")
    @song4 = Song.new("Digital Witness", "St. Vincent")
    @song5 = Song.new("Computer Love", "Kraftwerk")
    @song6 = Song.new("Total Eclipse of the Heart", "Bonnie Tyler")
    @room1 = Room.new(1, 20, [], [])
    @room2 = Room.new(2, 10, [], [])
    @room3 = Room.new(3, 5, [], [])
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
    @bar.check_in_guest(@guest, @room1, @bouncer)
    assert_equal(1, @room1.guests.count)
    assert_equal(45, @guest.wallet)
    assert_equal(5, @bar.till)
  end

  def test_check_out_guest
    @rooms = [@room1, @room2, @room3]
    @bar.check_in_guest(@guest, @room1, @bouncer)
    @bar.check_out_guest(@guest, @room1)
    assert_equal(0, @room1.guests.count)
  end

  def test_guest_can_cheer
    @rooms = [@room1, @room2, @room3]
    @bar.check_in_guest(@guest2, @room1, @bouncer)
    @room1.add_songs(@song2)
    assert_equal("Woo! That's my favourite song!", @bar.guest_cheers(@room1, @song2))
  end

end
