require 'test_helper'

class Admin::AllExercisesControllerTest < ActionController::TestCase
  setup do
    @admin_all_exercise = admin_all_exercises(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_all_exercises)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_all_exercise" do
    assert_difference('Admin::AllExercise.count') do
      post :create, admin_all_exercise: { exercite_id: @admin_all_exercise.exercite_id, sentences: @admin_all_exercise.sentences, title: @admin_all_exercise.title }
    end

    assert_redirected_to admin_all_exercise_path(assigns(:admin_all_exercise))
  end

  test "should show admin_all_exercise" do
    get :show, id: @admin_all_exercise
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_all_exercise
    assert_response :success
  end

  test "should update admin_all_exercise" do
    patch :update, id: @admin_all_exercise, admin_all_exercise: { exercite_id: @admin_all_exercise.exercite_id, sentences: @admin_all_exercise.sentences, title: @admin_all_exercise.title }
    assert_redirected_to admin_all_exercise_path(assigns(:admin_all_exercise))
  end

  test "should destroy admin_all_exercise" do
    assert_difference('Admin::AllExercise.count', -1) do
      delete :destroy, id: @admin_all_exercise
    end

    assert_redirected_to admin_all_exercises_path
  end
end
