require 'test_helper'

class FaqTest < ActiveSupport::TestCase
  
  test "should contain only experiences that belong to product" do
    faq = Faq.new
    assert faq.questions.all? {|q| q.faq == faq}
  end
end
