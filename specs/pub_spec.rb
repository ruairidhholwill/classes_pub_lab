require("minitest/autorun")
require("minitest/rg")
require_relative("../pub.rb")
require_relative("../drinks.rb")
require_relative("../customers.rb")

class PubTest < MiniTest::Test

  def setup
    @drink1 = Drink.new("beer", 3)
    @drink2 = Drink.new("wine", 5)
    @drink3 = Drink.new("gin", 7)
    @drinks = [@drink1, @drink2, @drink3]
    @customer1 = Customer.new("Diego", 20)
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

end
