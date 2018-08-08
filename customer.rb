class Customer

  attr_reader :name, :wallet

  def initialize(name, wallet)
    @name = name
    @wallet = wallet
  end

  def remove_money(amount)
    @wallet -= amount
  end

  def buy_drink(pub, drink_name)
    drink = pub.get_drink(drink_name)
    if drink != nil
      price = drink.price
      remove_money(price)
      pub.add_money(price)
    end

  end

end
