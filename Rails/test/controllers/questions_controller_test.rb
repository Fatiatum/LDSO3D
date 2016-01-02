require 'test_helper'

class QuestionsControllerTest < ActionController::TestCase
  setup do
    @question = questions(:one)
  end

  test "should get index with locale en" do
    get :index, :locale => :en
    assert_response :success
    assert_not_nil assigns(:questions)
  end

  test "should get index with locale pt" do
    get :index, :locale => :pt
    assert_response :success
    assert_not_nil assigns(:questions)
  end

  test "should get new with locale en" do
    get :new, :locale => :en
    assert_response :success
  end

  test "should get new with locale pt" do
    get :new, :locale => :pt
    assert_response :success
  end

  test "should create question with locale en" do
    assert_difference('Question.count') do
      post :create, question: { answer_pt: @question.answer_pt, faq_id: @question.faq_id, name_pt: @question.name_pt, answer_en: @question.answer_en, name_en: @question.name_en }, :locale => :en
    end

    assert_redirected_to question_path(assigns(:question))
  end

  test "should create question with locale pt" do
    assert_difference('Question.count') do
      post :create, question: { answer_pt: @question.answer_pt, faq_id: @question.faq_id, name_pt: @question.name_pt, answer_en: @question.answer_en, name_en: @question.name_en }, :locale => :pt
    end

    assert_redirected_to question_path(assigns(:question))
  end

  test "should show question with locale en" do
    get :show, id: @question, :locale => :en
    assert_response :success
  end

  test "should show question with locale pt" do
    get :show, id: @question, :locale => :pt
    assert_response :success
  end

  test "should get edit with locale en" do
    get :edit, id: @question, :locale => :en
    assert_response :success
  end

  test "should get edit with locale pt" do
    get :edit, id: @question, :locale => :pt
    assert_response :success
  end

  test "should update question with locale en" do
    patch :update, id: @question, question: { answer_pt: @question.answer_pt, faq_id: @question.faq_id, name_pt: @question.name_pt, answer_en: @question.answer_en, name_en: @question.name_en }, :locale => :en
    assert_redirected_to question_path(assigns(:question))
  end

  test "should update question with locale pt" do
    patch :update, id: @question, question: { answer_pt: @question.answer_pt, faq_id: @question.faq_id, name_pt: @question.name_pt, answer_en: @question.answer_en, name_en: @question.name_en }, :locale => :pt
    assert_redirected_to question_path(assigns(:question))
  end

  test "should destroy question with locale en" do
    assert_difference('Question.count', -1) do
      delete :destroy, id: @question, :locale => :en
    end

    assert_redirected_to questions_path
  end

  test "should destroy question with locale pt" do
    assert_difference('Question.count', -1) do
      delete :destroy, id: @question, :locale => :pt
    end

    assert_redirected_to questions_path
  end
end
