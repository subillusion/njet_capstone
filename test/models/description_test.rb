require 'test_helper'

class DescriptionTest < ActiveSupport::TestCase
  def setup
    @title = titles
    # This code is not idiomatically correct.
    @descriptions = descriptions.new(content: "", title_id: @title.id)
  end

  test "should be valid" do
    assert @descriptions.valid?
  end

  test "title id should be present" do
    @description.user_id = nil
    assert_not @descriptions.valid?
  end
end
