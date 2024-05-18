require "test_helper"

class InmateTest < ActiveSupport::TestCase
  test "creating" do
    inmate = Prison.first.inmates.new
    assert_not inmate.save
    inmate.name = "Matt"
    assert inmate.save
  end
end
