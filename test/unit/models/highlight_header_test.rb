require File.join(File.dirname(__FILE__), '/../../test_helper')

class HighlightHeaderTest < ActiveSupport::TestCase

  test "should be able to create new block" do
    assert HighlightHeader.create!
  end
  
end