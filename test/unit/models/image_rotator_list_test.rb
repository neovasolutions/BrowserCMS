require File.join(File.dirname(__FILE__), '/../../test_helper')

class ImageRotatorListTest < ActiveSupport::TestCase

  test "should be able to create new block" do
    assert ImageRotatorList.create!
  end
  
end