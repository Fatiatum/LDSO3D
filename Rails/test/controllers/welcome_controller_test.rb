require 'test_helper'

class WelcomeControllerTest < ActionController::TestCase
  
  setup do
    @welcome = welcomes(:one)
  end

  # test "should get index with locale en" do
  #   get :index, :locale => :en
  #   assert_response :success
  #   assert_not_nil(:welcomes)
  # end

  # test "should get index with locale pt" do
  #   get :index, :locale => :pt
  #   assert_response :success
  #   assert_not_nil(:welcomes)
  # end

  # test "should get edit with locale en" do
  #   get :edit, id: @welcome, :locale => :en
  #   assert_response :success
  # end

  # test "should get edit with locale pt" do
  #   get :edit, id: @welcome, :locale => :pt
  #   assert_response :success
  # end

  # test "should update about with locale en" do
  #   patch :update, id: @welcome, welcome: { text_pt: @welcome.text_pt, text_en: @welcome.text_en,
  #     title_pt: @welcome.title_pt, title_en: @welcome.title_en,
  #     subtitle_pt: @welcome.subtitle_pt, subtitle_en: @welcome.subtitle_en,
  #     texttitle_pt: @welcome.texttitle_pt, texttitle_en: @welcome.texttitle_en,
  #     image: @welcome.image}, :locale => :en
  #   assert_redirected_to welcome_path(assigns(:welcome))
  # end

  # test "should update about with locale pt" do
  #   patch :update, id: @welcome, welcome: { text_pt: @welcome.text_pt, text_en: @welcome.text_en,
  #     title_pt: @welcome.title_pt, title_en: @welcome.title_en,
  #     subtitle_pt: @welcome.subtitle_pt, subtitle_en: @welcome.subtitle_en,
  #     texttitle_pt: @welcome.texttitle_pt, texttitle_en: @welcome.texttitle_en,
  #     image: @welcome.image}, :locale => :pt
  #   assert_redirected_to welcome_path(assigns(:welcome))
  # end

end
