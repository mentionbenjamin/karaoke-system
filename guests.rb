class Guest


  attr_reader(:name, :wallet_balance)

  def initialize(name, wallet_balance)
    @name = name
    @wallet_balance = wallet_balance
  end


  def decrease_wallet_balance_on_entry(room)
    @wallet_balance -= room.entry_fee
  end












end
