require File.join(File.dirname(__FILE__), '/../../test_helper')

class HighlightContentTest < ActiveSupport::TestCase

  test "should be able to create new block" do
    assert HighlightContent.create!
  end
  
end