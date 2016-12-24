require 'test_helper'

class Admin::WordLesionsControllerTest < ActionController::TestCase
  setup do
    @admin_word_lesion = admin_word_lesions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_word_lesions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_word_lesion" do
    assert_difference('Admin::WordLesion.count') do
      post :create, admin_word_lesion: { bg_audio_word: @admin_word_lesion.bg_audio_word, bg_word: @admin_word_lesion.bg_word, en_audio_word: @admin_word_lesion.en_audio_word, en_word: @admin_word_lesion.en_word, img_word: @admin_word_lesion.img_word, lesion_id: @admin_word_lesion.lesion_id, visible_word: @admin_word_lesion.visible_word }
    end

    assert_redirected_to admin_word_lesion_path(assigns(:admin_word_lesion))
  end

  test "should show admin_word_lesion" do
    get :show, id: @admin_word_lesion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_word_lesion
    assert_response :success
  end

  test "should update admin_word_lesion" do
    patch :update, id: @admin_word_lesion, admin_word_lesion: { bg_audio_word: @admin_word_lesion.bg_audio_word, bg_word: @admin_word_lesion.bg_word, en_audio_word: @admin_word_lesion.en_audio_word, en_word: @admin_word_lesion.en_word, img_word: @admin_word_lesion.img_word, lesion_id: @admin_word_lesion.lesion_id, visible_word: @admin_word_lesion.visible_word }
    assert_redirected_to admin_word_lesion_path(assigns(:admin_word_lesion))
  end

  test "should destroy admin_word_lesion" do
    assert_difference('Admin::WordLesion.count', -1) do
      delete :destroy, id: @admin_word_lesion
    end

    assert_redirected_to admin_word_lesions_path
  end
end
