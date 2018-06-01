require("minitest/autorun")
require_relative("../songs.rb")

class SongTest < MiniTest::Test

  def setup
    @song1 = Song.new("Cher - Believe")
    @song2 = Song.new("Diana Ross - It's My House")
    @song3 = Song.new("Whitney Housten - How Will I Know")
  end


  def test_song_name
    assert_equal("Cher - Believe", @song1.song_name())
  end






end
