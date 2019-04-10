class Customers

  attr_reader :name, :wallet

  def initialize(name, wallet)
    @name = name
    @wallet = wallet
  end

  def amount_in_wallet
    return @wallet
  end




end
