require "test_helper"

class PrisonTest < ActiveSupport::TestCase
  test "creating" do
    prison = Prison.new(world: World.first)
    assert_not prison.save
    prison.name = "ADX"
    assert prison.save
  end
end
