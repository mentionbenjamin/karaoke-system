class Guest


  attr_reader(:name, :wallet_balance)

  def initialize(name, wallet_balance)
    @name = name
    @wallet_balance = wallet_balance
  end


  def sufficient_funds_for_entry?(room)
    @wallet_balance >= room.entry_fee
  end


  def pay_for_entry(room)
    if sufficient_funds_for_entry?(room)
      @wallet_balance -= room.entry_fee()
    end
  end













end
