require("minitest/autorun")
require_relative("../room.rb")
require_relative("../songs.rb")
require_relative("../guests.rb")


class RoomTest < MiniTest::Test

  def setup
    @song1 = Song.new("Cher - Believe")
    @song2 = Song.new("Diana Ross - It's My House")
    @song3 = Song.new("Whitney Housten - How Will I Know")
    @song4 = Song.new("Come Fly With Me - Frank Sinatra")
    @tracklist = [@song1, @song2, @song3]
    @guest1 = Guest.new("Ben", 30)
    @guest2 = Guest.new("Daniel", 20)
    @guest3 = Guest.new("James", 40)

    @room = Room.new("Pop Karaoke", 100, @tracklist)
  end


  def test_room_name
    assert_equal("Pop Karaoke", @room.name())
  end

  def test_tracklist
    assert_equal([@song1, @song2, @song3], @room.tracklist())
  end

  def test_check_in_guest_to_room
    @room.add_guest_to_room(@guest1)
    assert_equal("Ben", @room.guests_in_room[0].name)
    # assert_equal(1, @room.number_of_guests())
  end

  def test_add_song_to_room
    @room.add_song(@song4)
    assert_equal(4, @tracklist.length())
  end

  def test_remove_song_from_room
    @room.remove_song(@song2)
    assert_equal(2, @tracklist.length())
  end







end
