require "minitest/autorun"
require_relative "rocket"

class RocketTest < Minitest::Test
  # Write your tests here!
def setup
@rocket = Rocket.new
end



def test_name
  @rocket.name("test")
  assert @rocket.name == "test"
end

def test_colour
  @rocket.colour("blue")
  assert @rocket.colour == "blue"
end


def test_list_off_returns_false
  if @rocket.flying?
  refute @rocket.lift_off
end
end

def test_lift_off_returns_true
  assert_equal(@rocket.lift_off)
end

def test_land_equals_false
refute @rocket.land
end

def test_land_equals_true
 @rocket.flying?(flying: false)
@rocket.land
assert_equal(false, @rocket.flying?)
end


end
