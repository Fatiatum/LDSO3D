require 'test_helper'

class AboutTest < ActiveSupport::TestCase
  
  test "should not save about without text pt" do
  	about = About.new
  	about.text_en = "b"
  	assert_not about.save, "Saved about without text pt"
  end

  test "should not save about without text en" do
  	about = About.new
  	about.text_pt = "a"
  	assert_not about.save, "Saved about without text en"
  end

  test "saved successfully" do
  	about = About.new
  	about.text_pt = "a"
  	about.text_en = "b"
  	assert about.save, "Unable to save about"
  end
end
