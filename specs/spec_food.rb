require("minitest/autorun")
require("minitest/rg")

require_relative("../customer.rb")
require_relative("../drink.rb")
require_relative("../pub.rb")
require_relative("../food.rb")

class FoodTest < MiniTest::Test

  def setup
    @food1 = Food.new("Peanuts", 1, 1)
  end

  def test_food_name
    assert_equal("Peanuts", @food1.name)
  end

  def test_rejuvenation_level
    assert_equal(1, @food1.rejuvenation_level)
  end

end
