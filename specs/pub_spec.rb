require('minitest/autorun')
require('minitest/rg')
require_relative('../pub')
require_relative('../drink')

class PubTest < Minitest::Test
  def setup
    @pub = Pub.new('Easy?')
  end

  def test_pub_has_name
    assert_equal('Easy?', @pub.name)
  end

  def test_pub_has_till
    assert_equal(0, @pub.till)
  end
end
