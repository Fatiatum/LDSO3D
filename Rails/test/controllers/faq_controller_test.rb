require 'test_helper'

class FaqControllerTest < ActionController::TestCase
  
  setup do
    @faq = faqs(:one)
  end

  # test "should get index with locale en" do
  #   get :index, :locale => :en
  #   assert_response :success
  #   assert_not_nil(:faqs)
  # end

  # test "should get index with locale pt" do
  #   get :index, :locale => :pt
  #   assert_response :success
  #   assert_not_nil(:faqs)
  # end

  # test "should get edit with locale en" do
  #   get :edit, id: @faq, :locale => :en
  #   assert_response :success
  # end

  # test "should get edit with locale pt" do
  #   get :edit, id: @faq, :locale => :pt
  #   assert_response :success
  # end


end
