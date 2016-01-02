require 'test_helper'

class CatalogTest < ActiveSupport::TestCase
  
  test "should not save catalog without text pt" do
  	catalog = Catalog.new
  	#catalog.text_pt = "sample text"
  	catalog.text_en = "sample text"
  	catalog.exp_title_pt = "sample text"
  	catalog.exp_title_en = "sample text"
  	catalog.exp_text_pt = "sample text"
  	catalog.exp_text_en = "sample text"
  	assert_not catalog.save, "Saved catalog without text pt"
  end

  test "should not save catalog without text en" do
  	catalog = Catalog.new
  	catalog.text_pt = "sample text"
  	#catalog.text_en = "sample text"
  	catalog.exp_title_pt = "sample text"
  	catalog.exp_title_en = "sample text"
  	catalog.exp_text_pt = "sample text"
  	catalog.exp_text_en = "sample text"
  	assert_not catalog.save, "Saved catalog without text en"
  end

  test "should not save catalog without exp title pt" do
  	catalog = Catalog.new
  	catalog.text_pt = "sample text"
  	catalog.text_en = "sample text"
  	#catalog.exp_title_pt = "sample text"
  	catalog.exp_title_en = "sample text"
  	catalog.exp_text_pt = "sample text"
  	catalog.exp_text_en = "sample text"
  	assert_not catalog.save, "Saved catalog without exp title pt"
  end

  test "should not save catalog without exp title en" do
  	catalog = Catalog.new
  	catalog.text_pt = "sample text"
  	catalog.text_en = "sample text"
  	catalog.exp_title_pt = "sample text"
  	#catalog.exp_title_en = "sample text"
  	catalog.exp_text_pt = "sample text"
  	catalog.exp_text_en = "sample text"
  	assert_not catalog.save, "Saved catalog without exp title en"
  end

  test "should not save catalog without exp text pt" do
  	catalog = Catalog.new
  	catalog.text_pt = "sample text"
  	catalog.text_en = "sample text"
  	catalog.exp_title_pt = "sample text"
  	catalog.exp_title_en = "sample text"
  	#catalog.exp_text_pt = "sample text"
  	catalog.exp_text_en = "sample text"
  	assert_not catalog.save, "Saved catalog without exp text pt"
  end

  test "should not save catalog without exp text en" do
  	catalog = Catalog.new
  	catalog.text_pt = "sample text"
  	catalog.text_en = "sample text"
  	catalog.exp_title_pt = "sample text"
  	catalog.exp_title_en = "sample text"
  	catalog.exp_text_pt = "sample text"
  	#catalog.exp_text_en = "sample text"
  	assert_not catalog.save, "Saved catalog without exp text en"
  end

  test "successfully save catalog" do
  	catalog = Catalog.new
  	catalog.text_pt = "sample text"
  	catalog.text_en = "sample text"
  	catalog.exp_title_pt = "sample text"
  	catalog.exp_title_en = "sample text"
  	catalog.exp_text_pt = "sample text"
  	catalog.exp_text_en = "sample text"
  	assert catalog.save, "Unable to save catalog"
  end
end
