require("minitest/autorun")
require("minitest/rg")
require_relative("../food.rb")
require_relative("../customers.rb")
require_relative("../drinks.rb")
require_relative("../pub.rb")

class FoodTest < MiniTest::Test

  def setup
    @food1 = Food.new("chips", 3, 4)
    @food2 = Food.new("crisps", 2, 1)
  end

  def test_food_name
    assert_equal("chips", @food1.name)
  end

  def test_food_price
    assert_equal(3, @food1.price)
  end

  def test_rejuv_level
    assert_equal(4, @food1.rejuv_level)
  end





end
