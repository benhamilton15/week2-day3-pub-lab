class Customer

  attr_reader :name

  def initialize(name, wallet)
    @name = name
    @wallet = wallet

  end

  def wallet_value
    return @wallet
  end


end
