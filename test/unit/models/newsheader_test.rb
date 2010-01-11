require File.join(File.dirname(__FILE__), '/../../test_helper')

class NewsheaderTest < ActiveSupport::TestCase

  test "should be able to create new block" do
    assert Newsheader.create!
  end
  
end