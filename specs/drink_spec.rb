require("minitest/autorun")
require("minitest/rg")
require_relative("../drinks.rb")

class DrinkTest < MiniTest::Test

  def setup
    @drink1 = Drink.new("beer", 3, 1)
    @drink2 = Drink.new("wine", 5, 2)
    @drink3 = Drink.new("gin", 7, 3)
  end

  def test_drink_name
    assert_equal("beer", @drink1.name)
  end

  def test_drink_price
    assert_equal(5, @drink2.drink_price)
  end

end
