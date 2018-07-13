require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest

  test "should get root" do
    get home_path
    assert_response :success
  end

  def setup
  	@base_title = "Rating System"
  end	

  test "should get home" do
    get home_path
    assert_response :success
    assert_select "title", "Home | #{@base_title}"
  end

  test "should get help" do
    get help_path
    assert_response :success
    assert_select "title", "Help | #{@base_title}"    
  end

  test "should get contact" do
  	get contact_path
  	assert_response :success
  	assert_select "title", "Contact | #{@base_title}"
  end

end
