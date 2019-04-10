class Customer

  attr_accessor :name, :wallet

  def initialize(name, wallet)
    @name = name
    @wallet = wallet
  end

  def amount_in_wallet
    return @wallet
  end

  def decrease_wallet_less_drink(drink)
    @wallet -= drink.drink_price
  end
end
