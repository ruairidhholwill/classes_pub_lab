class Customer

  attr_accessor :name, :wallet, :age, :drunk_level

  def initialize(name, wallet, age, drunk_level)
    @name = name
    @wallet = wallet
    @age = age
    @drunk_level = drunk_level
  end

  def amount_in_wallet
    return @wallet
  end

  def customer_age
    return @age
  end

  def drunk_level
    return @drunk_level
  end

  def decrease_wallet_less_drink(drink)
    @wallet -= drink.drink_price
  end

  def can_customer_be_served()
    if @age >= 18
      return true
    else
      return false
    end
  end

  def increase_drunk_level(drink)
    return @drunk_level += drink.alcohol_level
  end

  def decrease_drunk_level(food)
    return @drunk_level -= food.rejuv_level
  end

end
