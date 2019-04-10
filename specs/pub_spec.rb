require("minitest/autorun")
require("minitest/rg")
require_relative("../pub.rb")
require_relative("../drinks.rb")

class PubTest < MiniTest::Test

  def setup
    @drink1 = Drink.new("beer", 3)
    @drink2 = Drink.new("wine", 5)
    @drink3 = Drink.new("gin", 7)
    @drinks = [@drink1, @drink2, @drink3]
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



end
