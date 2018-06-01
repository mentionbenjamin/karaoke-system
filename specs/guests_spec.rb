require("minitest/autorun")
require_relative("../guests.rb")
require_relative("../room.rb")
require_relative("../songs.rb")

class GuestTest < MiniTest::Test

  def setup
    @guest1 = Guest.new("Ben", 30)
    @guest2 = Guest.new("Daniel", 20)
    @guest3 = Guest.new("James", 40)
  end


  def test_guest_name
    assert_equal("Ben", @guest1.name())
  end

  def test_wallet_balance
    assert_equal(20, @guest2.wallet_balance())
  end

  def test_decrease_wallet_balance_on_entry
    assert_equal(25, @guest1.decrease_wallet_balance_on_entry())
  end







end
