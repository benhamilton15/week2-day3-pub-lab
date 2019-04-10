require("minitest/autorun")
require("minitest/rg")

require_relative("../customer.rb")

class CustomerTest < MiniTest::Test

  def setup

    @customer1 = Customer.new("Alex", 50)
  end

  def test_get_customer_name
    assert_equal("Alex", @customer1.name)
  end



end #end class
