require('minitest/autorun')
require('minitest/rg' )
require_relative('guest')

class GuestTest < Minitest::Test

  def setup()

    @guest1 = Guest.new("Rachel")
    @guest2 = Guest.new("Monica")
    @guest3 = Guest.new("Chandler")
    @guest4 = Guest.new("Joey")
    @guest4 = Guest.new("Ross")

end


def test_guest_name
  assert_equal("Grace", @guest3.name)
end



end
