require 'test_helper'

class ContactTest < ActiveSupport::TestCase
  
  test "should not save contact without text pt" do
  	contact = Contact.new
  	contact.phone_pt = 999999999
  	contact.address_pt = "sample text"
  	contact.email_pt = "sample@text.com"
  	contact.text_en = "sample text"
  	contact.phone_en = 999999999
  	contact.address_en = "sample text"
  	contact.email_en = "sample@text.com"
  	assert_not contact.save, "Saved contact without text pt"
  end

  test "should not save contact without text en" do
  	contact = Contact.new
  	contact.phone_pt = 999999999
  	contact.address_pt = "sample text"
  	contact.email_pt = "sample@text.com"
  	contact.text_pt = "sample text"
  	contact.phone_en = 999999999
  	contact.address_en = "sample text"
  	contact.email_en = "sample@text.com"
  	assert_not contact.save, "Saved contact without text en"
  end

  test "should not save contact without phone pt" do
  	contact = Contact.new
  	contact.text_pt = "sample text"
  	contact.address_pt = "sample text"
  	contact.email_pt = "sample@text.com"
  	contact.text_en = "sample text"
  	contact.phone_en = 999999999
  	contact.address_en = "sample text"
  	contact.email_en = "sample@text.com"
  	assert_not contact.save, "Saved contact without phone pt"
  end

  test "should not save contact without phone en" do
  	contact = Contact.new
  	contact.text_pt = "sample text"
  	contact.address_pt = "sample text"
  	contact.email_pt = "sample@text.com"
  	contact.text_en = "sample text"
  	contact.phone_pt = 999999999
  	contact.address_en = "sample text"
  	contact.email_en = "sample@text.com"
  	assert_not contact.save, "Saved contact without phone en"
  end


  test "should not save contact without address pt" do
  	contact = Contact.new
  	contact.phone_pt = 999999999
  	contact.text_pt = "sample text"
  	contact.email_pt = "sample@text.com"
  	contact.text_pt = "sample text"
  	contact.phone_en = 999999999
  	contact.address_en = "sample text"
  	contact.email_en = "sample@text.com"
  	assert_not contact.save, "Saved contact without address pt"
  end

  test "should not save contact without address en" do
  	contact = Contact.new
  	contact.phone_pt = 999999999
  	contact.text_pt = "sample text"
  	contact.email_pt = "sample@text.com"
  	contact.text_pt = "sample text"
  	contact.phone_en = 999999999
  	contact.address_pt = "sample text"
  	contact.email_en = "sample@text.com"
  	assert_not contact.save, "Saved contact without address en"
  end

  test "should not save contact without email pt" do
  	contact = Contact.new
  	contact.phone_pt = 999999999
  	contact.text_pt = "sample text"
  	contact.address_pt = "sample text"
  	contact.text_pt = "sample text"
  	contact.phone_en = 999999999
  	contact.address_en = "sample text"
  	contact.email_en = "sample@text.com"
  	assert_not contact.save, "Saved contact without email pt"
  end

  test "should not save contact without email en" do
  	contact = Contact.new
  	contact.phone_pt = 999999999
  	contact.text_pt = "sample text"
  	contact.address_pt = "sample text"
  	contact.text_pt = "sample text"
  	contact.phone_en = 999999999
  	contact.address_en = "sample text"
  	contact.email_pt = "sample@text.com"
  	assert_not contact.save, "Saved contact without email en"
  end

  test "saved successfully" do
  	contact = Contact.new
  	contact.text_pt = "sample text"
  	contact.phone_pt = 999999999
  	contact.address_pt = "sample text"
  	contact.email_pt = "sample@text.com"
  	contact.text_en = "sample text"
  	contact.phone_en = 999999999
  	contact.address_en = "sample text"
  	contact.email_en = "sample@text.com"
  	assert contact.save, "Unable to save contact"
  end
end
