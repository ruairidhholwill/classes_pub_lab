class Food

  attr_accessor :name, :price, :rejuv_level

  def initialize(name, price, rejuv_level)
    @name = name
    @price = price
    @rejuv_level = rejuv_level
  end

  def food_price
    return @price
  end

  def rejuv_level
    return @rejuv_level
  end









end
