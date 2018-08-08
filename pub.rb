class Pub

  attr_reader(:name, :till, :drinks)

  def initialize(name,drinks)
    @name  = name
    @till = 0
    @drinks = drinks
  end

  def get_drink(name)
    for drink in @drinks
      if drink.name == name
        return drink
      end
    end
    return nil
  end

  def add_money(amount)
    @till += amount
  end

  def check_age(customer)
    return customer.age >= 18
  end

end
