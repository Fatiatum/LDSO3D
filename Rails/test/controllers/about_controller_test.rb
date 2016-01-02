require 'test_helper'

class AboutControllerTest < ActionController::TestCase
  
  test "should get index with locale en" do
    get :index, :locale => :en
    assert_response :success
    assert_not_nil(:abouts)
  end

  test "should get index with locale pt" do
    get :index, :locale => :pt
    assert_response :success
    assert_not_nil(:abouts)
  end


end
