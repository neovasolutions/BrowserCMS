require File.join(File.dirname(__FILE__), '/../../test_helper')

class MithilaTest < ActiveSupport::TestCase

  test "should be able to create new block" do
    assert Mithila.create!
  end
  
end