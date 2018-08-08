require('minitest/autorun')
require('minitest/rg')
require_relative('../pub.rb')
require_relative('../drink.rb')

def PubTest < MiniTest::Test

  def setup
    @pub = Pub.new('Easy?')
  end

  def test_pub_has_name
    assert_equal('Easy?', @pub.name)
  end
end
