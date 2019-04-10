class Customer

  attr_reader :name, :age, :drunkeness

  def initialize(name, wallet, age)
    @name = name
    @wallet = wallet
    @age = age
    @drunkeness = 0
  end

  def wallet_value
    return @wallet
  end

  def buy_food(food, pub)
    @wallet -= food.price
    pub.add_to_till(food.price)
    @drunkeness -= food.rejuvenation_level
  end

  def buy_drink(drink, pub)
    if (pub.is_old_enough(@age) && !pub.too_drunk_to_serve(@drunkeness))
      @wallet -= drink.price
      pub.add_to_till(drink.price)
      @drunkeness += drink.alcohol_level
    else
      return "You're barred!!!"
    end

  end


end
