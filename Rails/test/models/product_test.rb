require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  
  test "should not save product without name pt" do
  	product = Product.new
  	#product.name_pt = "sample text"
  	product.description_pt = "sample text"
  	product.name_en = "sample text"
  	product.description_en = "sample text"
  	assert_not product.save, "Saved product without name pt"
  end

  test "should not save product without name en" do
  	product = Product.new
  	product.name_pt = "sample text"
  	product.description_pt = "sample text"
  	#product.name_en = "sample text"
  	product.description_en = "sample text"
  	assert_not product.save, "Saved product without name en"
  end

  test "should not save product without description pt" do
  	product = Product.new
  	product.name_pt = "sample text"
  	#product.description_pt = "sample text"
  	product.name_en = "sample text"
  	product.description_en = "sample text"
  	assert_not product.save, "Saved product without description pt"
  end

  test "should not save product without description en" do
  	product = Product.new
  	product.name_pt = "sample text"
  	product.description_pt = "sample text"
  	product.name_en = "sample text"
  	#product.description_en = "sample text"
  	assert_not product.save, "Saved product without description en"
  end

  test "successfully save product" do
  	product = Product.new
  	product.name_pt = "sample text"
  	product.description_pt = "sample text"
  	product.name_en = "sample text"
  	product.description_en = "sample text"
  	assert product.save, "Unable to save product"
  end

  test "should contain only experiences that belong to product" do
    product = Product.new
    assert product.experiences.all? {|e| e.product == product}
  end
end
