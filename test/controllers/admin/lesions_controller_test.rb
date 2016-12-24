require 'test_helper'

class Admin::LesionsControllerTest < ActionController::TestCase
  setup do
    @admin_lesion = admin_lesions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_lesions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_lesion" do
    assert_difference('Admin::Lesion.count') do
      post :create, admin_lesion: { description: @admin_lesion.description, name_lesion: @admin_lesion.name_lesion }
    end

    assert_redirected_to admin_lesion_path(assigns(:admin_lesion))
  end

  test "should show admin_lesion" do
    get :show, id: @admin_lesion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_lesion
    assert_response :success
  end

  test "should update admin_lesion" do
    patch :update, id: @admin_lesion, admin_lesion: { description: @admin_lesion.description, name_lesion: @admin_lesion.name_lesion }
    assert_redirected_to admin_lesion_path(assigns(:admin_lesion))
  end

  test "should destroy admin_lesion" do
    assert_difference('Admin::Lesion.count', -1) do
      delete :destroy, id: @admin_lesion
    end

    assert_redirected_to admin_lesions_path
  end
end
