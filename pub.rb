class Pub

  attr_reader :name, :till, :drink

  def initialize(name, till, drinks = [])
    @name = name
    @till = till
    @drinks = drinks
  end

  def amount_of_money_in_till
    return @till
  end

  def drinks_collection_drinks
    return @drinks.count
  end

  def increase_amount_in_till(drink)
    @till += drink.drink_price
  end

end
