require("minitest/autorun")
require("minitest/rg")
require_relative("../drink")

class DrinkTest < MiniTest::Test

  def setup
    @drink1 = Drink.new("Beer", 4)
  end

  def test_drink_has_name
    assert_equal("Beer", @drink1.name)
  end

end
