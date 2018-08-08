require('minitest/autorun')
require('minitest/rg')
require_relative('../pub')
require_relative('../drink')
require_relative('../customer')

class CustomerTest < MiniTest::Test

  def setup
    beer = Drink.new("Bud", 4)
    whisky = Drink.new("Bowmore", 6)
    rum = Drink.new("Kraken", 5)
    drinks = [beer, whisky, rum]
    @pub = Pub.new('Easy?', drinks)
    @customer = Customer.new("Tony", 50, 35)
  end

  def test_customer_has_name
    assert_equal("Tony", @customer.name)
  end

  def test_has_wallet_with_money
    assert_equal(50, @customer.wallet)
  end

  def test_can_remove_money
    @customer.remove_money(5)
    assert_equal(45, @customer.wallet)
  end

  def test_can_buy_drink
    @customer.buy_drink(@pub, "Kraken", @customer)
    assert_equal(45, @customer.wallet)
    assert_equal(5, @pub.till)
  end

  def test_has_age
    assert_equal(35, @customer.age)
  end



end
