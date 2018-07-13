require 'test_helper'

class FeedbackControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get feedback_path
    assert_response :success
  end

end
