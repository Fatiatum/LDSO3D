require 'test_helper'

class ExperienceTest < ActiveSupport::TestCase
  
  test "should not save experience without name" do
   	experience = Experience.new
    assert_not experience.save, "Saved experience without name"
   end
end
