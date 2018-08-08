require('minitest/autorun')
require('minitest/rg')
require_relative('../pub')
require_relative('../drink')

class PubTest < Minitest::Test
  def setup
    @beer = Drink.new("Bud", 4)
    whisky = Drink.new("Bowmore", 6)
    rum = Drink.new("Kraken", 5)
    drinks = [@beer, whisky, rum]
    @pub = Pub.new('Easy?', drinks)
  end

  def test_pub_has_name
    assert_equal('Easy?', @pub.name)
  end

  def test_pub_has_till
    assert_equal(0, @pub.till)
  end

  def test_pub_has_drinks
    assert_equal(3, @pub.drinks.length)
  end

  def test_get_drink_by_name
    assert_equal(@beer, @pub.get_drink('Bud'))
  end
end
