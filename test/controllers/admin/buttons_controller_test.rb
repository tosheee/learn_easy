require 'test_helper'

class Admin::ButtonsControllerTest < ActionController::TestCase
  setup do
    @admin_button = admin_buttons(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_buttons)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_button" do
    assert_difference('Admin::Button.count') do
      post :create, admin_button: { name_button: @admin_button.name_button, path_button: @admin_button.path_button, title_button: @admin_button.title_button, type_button: @admin_button.type_button }
    end

    assert_redirected_to admin_button_path(assigns(:admin_button))
  end

  test "should show admin_button" do
    get :show, id: @admin_button
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_button
    assert_response :success
  end

  test "should update admin_button" do
    patch :update, id: @admin_button, admin_button: { name_button: @admin_button.name_button, path_button: @admin_button.path_button, title_button: @admin_button.title_button, type_button: @admin_button.type_button }
    assert_redirected_to admin_button_path(assigns(:admin_button))
  end

  test "should destroy admin_button" do
    assert_difference('Admin::Button.count', -1) do
      delete :destroy, id: @admin_button
    end

    assert_redirected_to admin_buttons_path
  end
end
