require 'test_helper'

class FaqControllerTest < ActionController::TestCase
  
  test "should get index with locale en" do
    get :index, :locale => :en
    assert_response :success
    assert_not_nil(:faqs)
  end

  test "should get index with locale pt" do
    get :index, :locale => :pt
    assert_response :success
    assert_not_nil(:faqs)
  end

end
