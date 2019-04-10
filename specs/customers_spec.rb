require("minitest/autorun")
require("minitest/rg")
require_relative("../customers.rb")
require_relative("../drinks.rb")

class CustomerTest < MiniTest::Test

  def setup
    @drink1 = Drink.new("beer", 3)
    @customer1 = Customer.new("Diego", 20)
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

end
