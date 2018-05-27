require("minitest/autorun")
require("minitest/rg")

require_relative("../guest.rb")
require_relative("../song.rb")
require_relative("../room.rb")
require_relative("../bouncer.rb")
require_relative("../karaoke_bar.rb")

class BouncerTest<Minitest::Test

  def setup
    @bouncer = Bouncer.new("Big Leon")
    @bar = Bar.new("Karaoke Go!", [], 0, 5)
    @room = Room.new(1, 20, [], [])
    @guest = Guest.new("Slorp", 10, "Wonderwall")
    @guest2 = Guest.new("Kate", 50, "American Girl")
  end

  def test_bouncer_has_name
    assert_equal("Big Leon", @bouncer.name)
  end

  def test_bouncer_can_bounce
    @room.add_guest_to_room(@guest)
    assert_equal("Nae Wonderwall. Up eh road.", @bouncer.bounce(@guest))
  end

end
