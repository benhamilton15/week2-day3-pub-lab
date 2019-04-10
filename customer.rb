class Customer

  attr_reader :name

  def initialize(name, wallet)
    @name = name
    @wallet = wallet

  end

  def wallet_value
    return @wallet
  end

  def buy_drink(drink, pub)
    @wallet -= drink.price
    pub.add_to_till(drink.price)
  end


end
