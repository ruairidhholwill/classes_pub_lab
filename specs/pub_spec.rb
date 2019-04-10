require("minitest/autorun")
require("minitest/rg")
require_relative("../pub.rb")
require_relative("../drinks.rb")
require_relative("../customers.rb")

class PubTest < MiniTest::Test

  def setup
    @drink1 = Drink.new("beer", 3, 1)
    @drink2 = Drink.new("wine", 5, 2)
    @drink3 = Drink.new("gin", 7, 3)
    @drinks = [@drink1, @drink2, @drink3]
    @customer1 = Customer.new("Diego", 20, 33, 8)
    @customer2 = Customer.new("Ru", 15, 23, 11)
    @pub = Pub.new("Chanter", 100, @drinks)
  end

  def test_pub_name
    assert_equal("Chanter", @pub.name)
  end

  def test_amount_of_money_in_till
    assert_equal(100, @pub.amount_of_money_in_till)
  end

  def test_drinks_collection_count
    assert_equal(3, @drinks.count)
  end

  def test_till_amount_increases
    @pub.increase_amount_in_till(@drink1)
    assert_equal(103, @pub.amount_of_money_in_till)
  end

  def test_exchange_of_money
    @pub.exchange_money(@pub, @customer1, @drink1)
    assert_equal(17, @customer1.amount_in_wallet)
    assert_equal(103, @pub.amount_of_money_in_till)
  end

  def test_can_customer_drink
    result = @pub.check_customer_age(@customer1)
    assert_equal("You are over 18", result)
  end

  def test_refuse_customer
    result = @pub.refuse_customer(@customer2)
    assert_equal("You have been refused", result)
  end

end
