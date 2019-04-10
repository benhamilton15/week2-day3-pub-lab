require("minitest/autorun")
require("minitest/rg")

require_relative("../pub.rb")
require_relative("../drink.rb")
require_relative("../customer.rb")


class PubTest < MiniTest::Test

  def setup
    @customer1 = Customer.new("Alex", 50, 18)
    @drink1 = Drink.new("Beer", 2, 1)
    @drink2 = Drink.new("Gin", 3, 2)
    @drink3 = Drink.new("Gin", 3, 2)
    @drinks = [@drink1, @drink2, @drink3]
    
    @stock = {
      @drink1 => 4,
      @drink2 => 5,
      @drink3 => 6
    }

    @food1 = Food.new("Peanuts", 1, 1)
    @pub = Pub.new("4042", @drinks, @food1, @stock)

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


  def test_customer_is_old_enough
    assert(@pub.is_old_enough(@customer1.age))
  end

  def test_too_drunk_to_serve
    refute(@pub.too_drunk_to_serve(@customer1.drunkeness))
  end
  # def test_get_drink_list
  #   assert_equal("Beer", @pub.drink_list)
  # end



end # end class
