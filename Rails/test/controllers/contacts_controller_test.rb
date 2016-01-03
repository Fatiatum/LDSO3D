require 'test_helper'

class ContactsControllerTest < ActionController::TestCase
  
  setup do
    @contact = contacts(:one)
  end

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

  test "should get edit with locale en" do
    get :edit, id: @contact, :locale => :en
    assert_response :success
  end

  test "should get edit with locale pt" do
    get :edit, id: @contact, :locale => :pt
    assert_response :success
  end

  test "should update contact with locale en" do
    patch :update, id: @contact, contact: { text_pt: @contact.text_pt, text_en: @contact.text_en,
     phone_pt: @contact.phone_pt, phone_en: @contact.phone_en,
     address_pt: @contact.address_pt, address_en: @contact.address_en,
     email_pt: @contact.email_pt, email_en: @contact.email_en}, :locale => :en
    assert_redirected_to contact_path(assigns(:contact))
  end

  test "should update contact with locale pt" do
    patch :update, id: @contact, contact: { text_pt: @contact.text_pt, text_en: @contact.text_en,
     phone_pt: @contact.phone_pt, phone_en: @contact.phone_en,
     address_pt: @contact.address_pt, address_en: @contact.address_en,
     email_pt: @contact.email_pt, email_en: @contact.email_en}, :locale => :pt
    assert_redirected_to contact_path(assigns(:contact))
  end

end
