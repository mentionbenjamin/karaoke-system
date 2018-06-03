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




  # def enter_room
  #   return if sufficient_funds_for_entry?(room)
  #
  #   @wallet_balance -= room.entry_fee
  #
  # end





    # def serve(customer, drink)
    #   return if customer_too_young?(customer)
    #   return if customer_too_drunk?(customer)
    #   return if !@drinks.include?(drink)
    #   return if check_stock(drink) == 0
    #
    #   customer.buy_drink(drink)
    #   @till += drink.price()
    #   @drinks[drink] -= 1
    # end



end
