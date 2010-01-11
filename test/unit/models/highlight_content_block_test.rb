require File.join(File.dirname(__FILE__), '/../../test_helper')

class HighlightContentBlockTest < ActiveSupport::TestCase

  test "should be able to create new block" do
    assert HighlightContentBlock.create!
  end
  
end