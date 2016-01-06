require 'test_helper'

class AboutControllerTest < ActionController::TestCase
  
  setup do
    @about = abouts(:one)
  end

  # test "should get index with locale en" do
  #   get :index, :locale => :en
  #   assert_response :success
  #   assert_not_nil(:abouts)
  # end

  # test "should get index with locale pt" do
  #   get :index, :locale => :pt
  #   assert_response :success
  #   assert_not_nil(:abouts)
  # end

  # test "should get edit with locale en" do
  #   get :edit, id: @about, :locale => :en
  #   assert_response :success
  # end

  # test "should get edit with locale pt" do
  #   get :edit, id: @about, :locale => :pt
  #   assert_response :success
  # end

  # test "should update about with locale en" do
  #   patch :update, id: @about, about: { text_pt: @about.text_pt, text_en: @about.text_en, image: @about.image}, :locale => :en
  #   assert_redirected_to about_path(assigns(:about))
  # end

  # test "should update about with locale pt" do
  #   patch :update, id: @about, about: { text_pt: @about.text_pt, text_en: @about.text_en, image: @about.image}, :locale => :pt
  #   assert_redirected_to about_path(assigns(:about))
  # end

end
