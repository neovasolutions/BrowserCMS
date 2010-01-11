require File.join(File.dirname(__FILE__), '/../../test_helper')

class ImageListTest < ActiveSupport::TestCase

  test "should be able to create new block" do
    assert ImageList.create!
  end
  
end