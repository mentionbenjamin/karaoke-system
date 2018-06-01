require("minitest/autorun")
require_relative("../songs.rb")

class SongTest < MiniTest::Test

  def setup
    @song1 = Song.new("Cher", "Believe", "Pop")
    @song2 = Song.new("Diana Ross", "It's My House", "Pop")
    @song3 = Song.new("Whitney Housten", "How Will I Know", "Pop")
    @song4 = Song.new("Guns N' Roses", "Sweet Child O'Mine", "Rock")
    @song5 = Song.new("Bon Jovi", "Livin' On A Prayer", "Rock")
    @song6 = Song.new("The Eagles", "Hotel California", "Rock")
    @song7 = Song.new("Big L", "How Will I Make It", "Hip Hop")
    @song8 = Song.new("Geto Boys", "Damn It Feels Good To Be A Gangsta", "Hip Hop")
    @song9 = Song.new("Big Daddy Kane", "Smooth Operator", "Hip Hop")
    @songs = [@song1, @song2, @song3, @song4, @song5, @song6, @song7, @song8, @song9]
  end


  def test_artist_name
    assert_equal("Geto Boys", @song8.artist_name())
  end

  def test_genre
    assert_equal("Pop", @song1.genre())
  end






end
