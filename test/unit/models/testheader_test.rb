require File.join(File.dirname(__FILE__), '/../../test_helper')

class TestheaderTest < ActiveSupport::TestCase

  test "should be able to create new block" do
    assert Testheader.create!
  end
  
end