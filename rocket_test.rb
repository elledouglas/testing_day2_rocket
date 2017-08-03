require "minitest/autorun"
require_relative "rocket"

class RocketTest < Minitest::Test
  # Write your tests here!
def setup
  @rocket = Rocket.new
end



def test_name
@rocket.name=("test")
  assert @rocket.name == "test"
end


def test_colour
  @rocket.colour=("blue")
  assert @rocket.colour == "blue"
end

def test_flying?
 if @rocket.flying?
   assert_equal(@rocket.flying?, true )
end
end


def test_list_off_returns_false
  if @rocket.flying?
  refute @rocket.lift_off
  end
end

def test_lift_off_returns_true
  assert_equal(@rocket.lift_off, true)
end

def test_land_equals_false
  refute @rocket.land
end

def test_land_equals_true
  if @rocket.flying?
   assert_equal(@rocket.land, true)
  end
end

def test_status
  if @rocket.flying?
    assert_equal("Rocket #{@rocket.name} is flying through the sky", @rocket.flying?)
  end
end

def test_status_lift_off
  @rocket.name=("Susie")
  assert "Rocket #{@rocket.name} is read for lift off"
end


end
