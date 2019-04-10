require("minitest/autorun")
require("minitest/rg")
require_relative("../customers.rb")
require_relative("../drinks.rb")
require_relative("../food.rb")

class CustomerTest < MiniTest::Test

  def setup
    @drink1 = Drink.new("beer", 3, 1)
    @customer1 = Customer.new("Diego", 20, 33, 8)
    @food2 = Food.new("crisps", 2, 1)
  end

  def test_customer_name
    assert_equal("Diego", @customer1.name)
  end

  def test_amount_in_wallet
    assert_equal(20, @customer1.amount_in_wallet)
  end

  def test_decrease_wallet_amount
    @customer1.decrease_wallet_less_drink(@drink1)
    assert_equal(17, @customer1.amount_in_wallet)
  end

  def test_customer_age
    assert_equal(33, @customer1.age)
  end


  def test_drunk_level
    assert_equal(8, @customer1.drunk_level)
  end

  def test_can_customer_be_served
    assert_equal(true, @customer1.can_customer_be_served())
  end

  def test_does_drinking_increase_drunkennes_level
    result = @customer1.increase_drunk_level(@drink1)
    assert_equal(9, result)
  end

  def test_eating_decreases_drunk_level
    result = @customer1.decrease_drunk_level(@food2)
    assert_equal(7, result)
  end
  
end
