require 'test_helper'

class Admin::NameExercisesControllerTest < ActionController::TestCase
  setup do
    @admin_name_exercise = admin_name_exercises(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_name_exercises)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_name_exercise" do
    assert_difference('Admin::NameExercise.count') do
      post :create, admin_name_exercise: { name: @admin_name_exercise.name }
    end

    assert_redirected_to admin_name_exercise_path(assigns(:admin_name_exercise))
  end

  test "should show admin_name_exercise" do
    get :show, id: @admin_name_exercise
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_name_exercise
    assert_response :success
  end

  test "should update admin_name_exercise" do
    patch :update, id: @admin_name_exercise, admin_name_exercise: { name: @admin_name_exercise.name }
    assert_redirected_to admin_name_exercise_path(assigns(:admin_name_exercise))
  end

  test "should destroy admin_name_exercise" do
    assert_difference('Admin::NameExercise.count', -1) do
      delete :destroy, id: @admin_name_exercise
    end

    assert_redirected_to admin_name_exercises_path
  end
end
