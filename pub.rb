class Pub

  attr_reader :name

  def initialize(name, drinks)
    @name = name
    @drinks = drinks
    @till = 0

  end

  def till_contents
    return @till
  end

  def add_to_till(price)
    @till += price
  end


  # def drink_list
  #   #return @drinks
  #   p @drinks
  # end

end # end class
