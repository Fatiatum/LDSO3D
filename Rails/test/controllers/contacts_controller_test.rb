require 'test_helper'

class ContactsControllerTest < ActionController::TestCase
  
  test "should get index with locale en" do
    get :index, :locale => :en
    assert_response :success
    assert_not_nil(:contacts)
  end

  test "should get index with locale pt" do
    get :index, :locale => :pt
    assert_response :success
    assert_not_nil(:contacts)
  end

end
