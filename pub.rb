class Pub

  attr_reader(:name, :till, :drinks)

  def initialize(name,drinks)
    @name  = name
    @till = 0
    @drinks = drinks
  end
end
