require File.join(File.dirname(__FILE__), '/../../test_helper')

class NewsHeaderTest < ActiveSupport::TestCase

  test "should be able to create new block" do
    assert NewsHeader.create!
  end
  
end