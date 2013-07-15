require 'test_helper'

class QuestionDataControllerTest < ActionController::TestCase
  setup do
    @question_datum = question_data(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:question_data)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create question_datum" do
    assert_difference('QuestionDatum.count') do
      post :create, question_datum: { answered: @question_datum.answered, asked_by: @question_datum.asked_by, date: @question_datum.date, question_asked: @question_datum.question_asked, string: @question_datum.string }
    end

    assert_redirected_to question_datum_path(assigns(:question_datum))
  end

  test "should show question_datum" do
    get :show, id: @question_datum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @question_datum
    assert_response :success
  end

  test "should update question_datum" do
    put :update, id: @question_datum, question_datum: { answered: @question_datum.answered, asked_by: @question_datum.asked_by, date: @question_datum.date, question_asked: @question_datum.question_asked, string: @question_datum.string }
    assert_redirected_to question_datum_path(assigns(:question_datum))
  end

  test "should destroy question_datum" do
    assert_difference('QuestionDatum.count', -1) do
      delete :destroy, id: @question_datum
    end

    assert_redirected_to question_data_path
  end
end
