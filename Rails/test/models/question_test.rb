require 'test_helper'

class QuestionTest < ActiveSupport::TestCase
  
  test "should not save question without name pt" do
  	question = Question.new
  	#question.name_pt = "sample text"
  	question.name_en = "sample text"
  	question.answer_pt = "sample text"
  	question.answer_en = "sample text"
  	assert_not question.save, "Saved question without name pt"
  end

  test "should not save question without name en" do
  	question = Question.new
  	question.name_pt = "sample text"
  	#question.name_en = "sample text"
  	question.answer_pt = "sample text"
  	question.answer_en = "sample text"
  	assert_not question.save, "Saved question without name en"
  end

  test "should not save question without answer pt" do
  	question = Question.new
  	question.name_pt = "sample text"
  	question.name_en = "sample text"
  	#question.answer_pt = "sample text"
  	question.answer_en = "sample text"
  	assert_not question.save, "Saved question without answer pt"
  end

  test "should not save question without answer en" do
  	question = Question.new
  	question.name_pt = "sample text"
  	question.name_en = "sample text"
  	question.answer_pt = "sample text"
  	#question.answer_en = "sample text"
  	assert_not question.save, "Saved question without answer en"
  end

  #test "successfully saved question" do
  #	question = Question.new
  #	question.name_pt = "sample text"
  #	question.name_en = "sample text"
  #	question.answer_pt = "sample text"
  #	question.answer_en = "sample text"
  #	question.faq_id = 1
  #	assert_not question.save, "Unable to save question"
  #end
end
