require 'test_helper'

class WelcomeTest < ActiveSupport::TestCase
  
  test "should not save welcome without title pt" do
  	welcome = Welcome.new
  	welcome.title_en = "sample text"
  	welcome.subtitle_pt = "sample text"
  	welcome.subtitle_en = "sample text"
  	welcome.texttitle_pt = "sample text"
  	welcome.texttitle_en = "sample text"
  	welcome.text_pt = "sample text"
  	welcome.text_en = "sample text"
  	assert_not welcome.save, "Saved welcome without title pt"
  end

  test "should not save welcome without title en" do
  	welcome = Welcome.new
  	welcome.title_pt = "sample text"
  	welcome.subtitle_pt = "sample text"
  	welcome.subtitle_en = "sample text"
  	welcome.texttitle_pt = "sample text"
  	welcome.texttitle_en = "sample text"
  	welcome.text_pt = "sample text"
  	welcome.text_en = "sample text"
  	assert_not welcome.save, "Saved welcome without title en"
  end

  test "should not save welcome without subtitle pt" do
  	welcome = Welcome.new
  	welcome.title_en = "sample text"
  	welcome.title_pt = "sample text"
  	welcome.subtitle_en = "sample text"
  	welcome.texttitle_pt = "sample text"
  	welcome.texttitle_en = "sample text"
  	welcome.text_pt = "sample text"
  	welcome.text_en = "sample text"
  	assert_not welcome.save, "Saved welcome without subtitle pt"
  end

  test "should not save welcome without subtitle en" do
  	welcome = Welcome.new
  	welcome.title_en = "sample text"
  	welcome.subtitle_pt = "sample text"
  	welcome.title_pt = "sample text"
  	welcome.texttitle_pt = "sample text"
  	welcome.texttitle_en = "sample text"
  	welcome.text_pt = "sample text"
  	welcome.text_en = "sample text"
  	assert_not welcome.save, "Saved welcome without subtitle en"
  end

  test "should not save welcome without texttitle pt" do
  	welcome = Welcome.new
  	welcome.title_en = "sample text"
  	welcome.subtitle_pt = "sample text"
  	welcome.subtitle_en = "sample text"
  	welcome.title_pt = "sample text"
  	welcome.texttitle_en = "sample text"
  	welcome.text_pt = "sample text"
  	welcome.text_en = "sample text"
  	assert_not welcome.save, "Saved welcome without texttitle pt"
  end

  test "should not save welcome without texttitle en" do
  	welcome = Welcome.new
  	welcome.title_en = "sample text"
  	welcome.subtitle_pt = "sample text"
  	welcome.subtitle_en = "sample text"
  	welcome.texttitle_pt = "sample text"
  	welcome.title_pt = "sample text"
  	welcome.text_pt = "sample text"
  	welcome.text_en = "sample text"
  	assert_not welcome.save, "Saved welcome without texttitle en"
  end

  test "should not save welcome without text pt" do
  	welcome = Welcome.new
  	welcome.title_en = "sample text"
  	welcome.subtitle_pt = "sample text"
  	welcome.subtitle_en = "sample text"
  	welcome.texttitle_pt = "sample text"
  	welcome.texttitle_en = "sample text"
  	welcome.title_pt = "sample text"
  	welcome.text_en = "sample text"
  	assert_not welcome.save, "Saved welcome without text pt"
  end

  test "should not save welcome without text en" do
  	welcome = Welcome.new
  	welcome.title_en = "sample text"
  	welcome.subtitle_pt = "sample text"
  	welcome.subtitle_en = "sample text"
  	welcome.texttitle_pt = "sample text"
  	welcome.texttitle_en = "sample text"
  	welcome.text_pt = "sample text"
  	welcome.title_pt = "sample text"
  	assert_not welcome.save, "Saved welcome without text en"
  end

  test "successfully save welcome" do
  	welcome = Welcome.new
  	welcome.title_pt = "sample text"
  	welcome.title_en = "sample text"
  	welcome.subtitle_pt = "sample text"
  	welcome.subtitle_en = "sample text"
  	welcome.texttitle_pt = "sample text"
  	welcome.texttitle_en = "sample text"
  	welcome.text_pt = "sample text"
  	welcome.text_en = "sample text"
  	assert welcome.save, "Unable to save welcome"
  end
end
