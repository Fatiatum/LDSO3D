require 'test_helper'

class ExperiencesControllerTest < ActionController::TestCase
  setup do
    @experience = experiences(:one)
  end

  # test "should get index with locale en" do
  #   get :index, :locale=>:en
  #   assert_response :success
  #   assert_not_nil assigns(:experiences)
  # end

  # test "should get index with locale pt" do
  #   get :index, :locale=>:pt
  #   assert_response :success
  #   assert_not_nil assigns(:experiences)
  # end

  # test "should get new with locale en" do
  #   get :new, :locale=> :en
  #   assert_response :success
  # end

  # test "should get new with locale pt" do
  #   get :new, :locale=> :pt
  #   assert_response :success
  # end

  # test "should create experience with locale en" do
  #   assert_difference('Experience.count') do
  #     post :create, experience: { name_pt: @experience.name_pt, name_en: @experience.name_en, product_id: @experience.product_id }, :locale =>:en
  #   end

  #   assert_redirected_to experience_path(assigns(:experience))
  # end

  # test "should create experience with locale pt" do
  #   assert_difference('Experience.count') do
  #     post :create, experience: { name_pt: @experience.name_pt, name_en: @experience.name_en, product_id: @experience.product_id }, :locale =>:pt
  #   end

  #   assert_redirected_to experience_path(assigns(:experience))
  # end

  # test "should show experience with locale en" do
  #   get :show, id: @experience, :locale => :en
  #   assert_response :success
  # end

  # test "should show experience with locale pt" do
  #   get :show, id: @experience, :locale => :pt
  #   assert_response :success
  # end

  # test "should get edit with locale en" do
  #   get :edit, id: @experience, :locale => :en
  #   assert_response :success
  # end

  # test "should get edit with locale pt" do
  #   get :edit, id: @experience, :locale => :pt
  #   assert_response :success
  # end

  # test "should update experience with locale en" do
  #   patch :update, id: @experience, experience: { name_pt: @experience.name_pt, name_en: @experience.name_en, product_id: @experience.product_id }, :locale => :en
  #   assert_redirected_to experience_path(assigns(:experience))
  # end

  # test "should update experience with locale pt" do
  #   patch :update, id: @experience, experience: { name_pt: @experience.name_pt, name_en: @experience.name_en, product_id: @experience.product_id }, :locale => :pt
  #   assert_redirected_to experience_path(assigns(:experience))
  # end

  # test "should destroy experience with locale en" do
  #   assert_difference('Experience.count', -1) do
  #     delete :destroy, id: @experience, :locale => :en
  #   end

  #   assert_redirected_to experiences_path
  # end

  # test "should destroy experience with locale pt" do
  #   assert_difference('Experience.count', -1) do
  #     delete :destroy, id: @experience, :locale => :pt
  #   end

    assert_redirected_to experiences_path
  end
  
end
