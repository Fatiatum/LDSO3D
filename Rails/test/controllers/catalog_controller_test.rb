require 'test_helper'

class CatalogControllerTest < ActionController::TestCase
  
  setup do
    @catalog = catalogs(:one)
  end

  test "should get index with locale en" do
    get :index, :locale => :en
    assert_response :success
    assert_not_nil(:catalogs)
  end

  test "should get index with locale pt" do
    get :index, :locale => :pt
    assert_response :success
    assert_not_nil(:catalogs)
  end

  test "should get edit with locale en" do
    get :edit, id: @catalog, :locale => :en
    assert_response :success
  end

  test "should get edit with locale pt" do
    get :edit, id: @catalog, :locale => :pt
    assert_response :success
  end

  test "should update catalog with locale en" do
    patch :update, id: @catalog, catalog: { text_pt: @catalog.text_pt, text_en: @catalog.text_en,
     exp_title_en: @catalog.exp_title_en, exp_title_pt: @catalog.exp_title_pt,
      exp_text_en: @catalog.exp_text_en, exp_text_pt: @catalog.exp_text_pt}, :locale => :en
    assert_redirected_to catalog_path(assigns(:catalog))
  end

  test "should update catalog with locale pt" do
    patch :update, id: @catalog, catalog: { text_pt: @catalog.text_pt, text_en: @catalog.text_en,
     exp_title_en: @catalog.exp_title_en, exp_title_pt: @catalog.exp_title_pt,
      exp_text_en: @catalog.exp_text_en, exp_text_pt: @catalog.exp_text_pt}, :locale => :pt
    assert_redirected_to catalog_path(assigns(:catalog))
  end
  
end
