require("minitest/autorun")
require("minitest/rg")

require_relative("../song.rb")

class SongTest<Minitest::Test

  def setup
    @song = Song.new("Technologic", "Daft Punk")
  end

  def test_song_has_title
    assert_equal("Technologic", @song.title)
  end

  def test_song_has_artist
    assert_equal("Daft Punk", @song.artist)
  end
  
end
