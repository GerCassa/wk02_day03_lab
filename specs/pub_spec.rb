require('minitest/autorun')
require('minitest/rg')
require_relative('../pub')
require_relative('../drink')
require_relative('../customer')


class PubTest < Minitest::Test
  def setup
    @beer = Drink.new("Bud", 4)
    whisky = Drink.new("Bowmore", 6)
    rum = Drink.new("Kraken", 5)
    drinks = [@beer, whisky, rum]
    @pub = Pub.new('Easy?', drinks)
    @customer1 = Customer.new("Tony", 50, 35)
    @customer2 = Customer.new("Jack", 5, 4)
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

  def test_get_drink_by_name_legal
    assert_equal(@beer, @pub.get_drink('Bud', @customer1))
  end

  def test_get_drink_by_name__nil_legal
    assert_nil(@pub.get_drink('Sol', @customer1))
  end

    def test_get_drink_by_name_illegal
      assert_nil(@pub.get_drink('Bud', @customer2))
    end

  def test_can_add_money
    before = @pub.till
    @pub.add_money(5)
    assert_equal(5, @pub.till)
  end

  def test_customer_age__legal
    assert_equal(true, @pub.check_age(@customer1))
  end

  def test_customer_age__illegal
    assert_equal(false, @pub.check_age(@customer2))
  end




end
