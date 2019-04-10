require("minitest/autorun")
require("minitest/rg")

require_relative("../pub.rb")
require_relative("../drink.rb")
require_relative("../customer.rb")


class PubTest < MiniTest::Test

  def setup
    @customer1 = Customer.new("Alex", 50)
    @drink1 = Drink.new("Beer", 2)
    @drink2 = Drink.new("Gin", 3)
    @drinks = [@drink1, @drink2]
    @pub = Pub.new("4042", @drinks)
  end

  def test_pub_has_name
    assert_equal("4042", @pub.name)
  end

  def test_contents_of_till
    assert_equal(0, @pub.till_contents)
  end

  def test_serve_customer_drink
    assert_equal(2, @pub.add_to_till(2))
  end

  # def test_get_drink_list
  #   assert_equal("Beer", @pub.drink_list)
  # end



end # end class
