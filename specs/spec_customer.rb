require("minitest/autorun")
require("minitest/rg")

require_relative("../customer.rb")
require_relative("../drink.rb")
require_relative("../pub.rb")
require_relative("../food.rb")

class CustomerTest < MiniTest::Test

  def setup
    @drink1 = Drink.new("Beer", 2, 1)
    @drink2 = Drink.new("Absinthe", 3, 7)
    @drink3 = Drink.new("Gin", 3, 2)
    @drinks = [@drink1, @drink2, @drink3]

    @stock = {
      @drink1 => 4,
      @drink2 => 5,
      @drink3 => 6
    }

    @food1 = Food.new("Peanuts", 1, 1)
    @pub = Pub.new("4042", @drinks, @food1, @stock)
    @customer1 = Customer.new("Alex", 50, 18)
    @customer2 = Customer.new("John", 25, 16)
  end

  def test_get_customer_name
    assert_equal("Alex", @customer1.name)
  end

  def test_get_wallet_value
    assert_equal(50, @customer1.wallet_value)
  end

  def test_adjust_drunkeness_level
    @customer1.buy_drink(@drink1, @pub)
    assert_equal(1, @customer1.drunkeness)
  end

  def test_customer_can_buy_drink__in_stock
    
  end

  def test_customer_can_buy_drink
    @customer1.buy_drink(@drink1, @pub)
    assert_equal(48, @customer1.wallet_value)
  end

  def test_customer_can_buy_food
    @customer1.buy_food(@food1, @pub)
    assert_equal(49, @customer1.wallet_value)
  end

  def test_customer_reduce_drunkeness_level
    @customer1.buy_drink(@drink3, @pub)
    @customer1.buy_food(@food1, @pub)
    assert_equal(1, @customer1.drunkeness)
  end

  def test_customer_can_buy_drink__to_young
    result = @customer2.buy_drink(@drink1, @pub)
    assert_equal("You're barred!!!", result)
  end

  def test_customer_can_buy_drink__to_drunk
    @customer1.buy_drink(@drink2, @pub)
    result =  @customer1.buy_drink(@drink1, @pub)
    assert_equal("You're barred!!!", result)
  end

  def test_customer_age
    assert_equal(18, @customer1.age)
  end


end #end class
