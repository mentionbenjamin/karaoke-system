require("minitest/autorun")
require_relative("../guest.rb")
require_relative("../room.rb")
require_relative("../songs.rb")

class GuestTest < MiniTest::Test


  def setup
    @song1 = Song.new("Cher - Believe")
    @song2 = Song.new("Diana Ross - It's My House")
    @song3 = Song.new("Whitney Housten - How Will I Know")
    @song4 = Song.new("Come Fly With Me - Frank Sinatra")
    @tracklist = [@song1, @song2, @song3]

    @guest1 = Guest.new("Ben", 30)
    @guest2 = Guest.new("Daniel", 20)
    @guest3 = Guest.new("James", 5)

    @room = Room.new("Pop Karaoke", 100, 10, @tracklist, 3)
  end


  def test_guest_name
    assert_equal("Ben", @guest1.name())
  end

  def test_wallet_balance
    assert_equal(20, @guest2.wallet_balance())
  end

  def test_sufficient_funds_for_entry__true
    assert_equal(true, @guest1.sufficient_funds_for_entry?(@room))
  end

  def test_sufficient_funds_for_entry__false
    assert_equal(false, @guest3.sufficient_funds_for_entry?(@room))
  end

  def test_pay_for_entry
    @guest1.pay_for_entry(@room)
    assert_equal(20, @guest1.wallet_balance())
  end


  # def test_guest_can_enter_room
  #   @guest1.sufficient_funds_for_entry?(@room)
  #   @guest1.pay_for_entry()
  #   assert_equal(20, @guest1.wallet_balance())
  # end






end
