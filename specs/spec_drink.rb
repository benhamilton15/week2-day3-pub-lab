require("minitest/autorun")
require("minitest/rg")

require_relative("../drink.rb")

class DrinkTest < MiniTest::Test

  def setup
    @drink1 = Drink.new("Beer", 2, 1)
  end

  def test_drink_has_name
    assert_equal("Beer", @drink1.name)
  end

  def test_drink_alcohol_level
    assert_equal(1, @drink1.alcohol_level)
  end

end # end class
