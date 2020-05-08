require 'test_helper'

class HomepageControllerTest < ActionDispatch::IntegrationTest
  def setup
    @base_title = "Grinnell Assessment"
  end

  test "should get home" do
    get '/'
    assert_response :success
    assert_select "title", "Home | #{@base_title}"
  end

  test "should get contact" do
    get '/contact'
    assert_response :success
    assert_select "title", "Contact | #{@base_title}"
  end

  test "should get about" do
    get '/about'
    assert_response :success
    assert_select "title", "About | #{@base_title}"
  end
end
