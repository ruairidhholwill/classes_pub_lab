class Pub

  attr_accessor :name, :till, :drink

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

  def exchange_money(pub, customer, drink)
    customer.decrease_wallet_less_drink(drink)
    pub.increase_amount_in_till(drink)
  end

  def check_customer_age(customer)
    return true if customer.can_customer_be_served
  end

  def refuse_customer(customer)
    if customer.drunk_level <= 10
      return "Have a drink!"
    else
      return "You have been refused"
    end
  end

end
