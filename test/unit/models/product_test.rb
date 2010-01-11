require File.join(File.dirname(__FILE__), '/../../test_helper')

class ProductTest < ActiveSupport::TestCase

  test "should be able to create new block" do
    assert Product.create!
  end
  
end