require File.join(File.dirname(__FILE__), '/../../test_helper')

class NewsContentTest < ActiveSupport::TestCase

  test "should be able to create new block" do
    assert NewsContent.create!
  end
  
end