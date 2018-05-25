require("minitest/autorun")
require("minitest/rg")

require_relative("../guest.rb")
require_relative("../song.rb")
require_relative("../room.rb")

class GuestTest<Minitest::Test

  def setup
    @guest = Guest.new("Curly Boy", 50)
    @song = Song.new("I Love My Computer", "Bad Religion")
    @room = Room.new(1, 20, [], [])
  end

def test_guest_has_name
  assert_equal("Curly Boy", @guest.name)
end

def test_guest_has_money_in_wallet
  assert_equal(50, @guest.wallet)
end




# def test_guest_can_sing_song
#   assert_equal("La la la! I'm Curly Boy and I'm singing I Love My Computer! Doo-be-doo!", @guest.sing)
# end
end
