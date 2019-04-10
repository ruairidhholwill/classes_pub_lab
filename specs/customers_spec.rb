require("minitest/autorun")
require("minitest/rg")
require_relative("../customers.rb")

class CustomersTest < MiniTest::Test

  def setup
    @customer1 = Customers.new("Diego", 20)
  end

  def test_customer_name
    assert_equal("Diego", @customer1.name)
  end

  def test_amount_in_wallet
    assert_equal(20, @customer1.amount_in_wallet)
  end

end
