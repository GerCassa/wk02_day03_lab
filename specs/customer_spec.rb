require('minitest/autorun')
require('minitest/rg')
require_relative('../pub')
require_relative('../drink')
require_relative('../customer')

class CustomerTest < MiniTest::Test

  def setup
    @customer = Customer.new("Tony", 50)
  end

  def test_customer_has_name
    assert_equal("Tony", @customer.name)
  end

  def test_has_wallet_with_money
    assert_equal(50, @customer.wallet)
  end

end
