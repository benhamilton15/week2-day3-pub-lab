require("minitest/autorun")
require("minitest/rg")

require_relative("../customer.rb")
require_relative("../drink.rb")
require_relative("../pub.rb")

class CustomerTest < MiniTest::Test

  def setup
    @drink1 = Drink.new("Beer", 2)
    @pub = Pub.new("4042", @drink1)
    @customer1 = Customer.new("Alex", 50)
  end

  def test_get_customer_name
    assert_equal("Alex", @customer1.name)
  end

  def test_get_wallet_value
    assert_equal(50, @customer1.wallet_value)
  end

  def test_customer_can_buy_drink
    @customer1.buy_drink(@drink1, @pub)
    assert_equal(48, @customer1.wallet_value)
    # assert_equal(2, @pub.till_contents)
  end



end #end class
