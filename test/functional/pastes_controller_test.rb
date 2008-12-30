require 'test_helper'

class PastesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pastes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create paste" do
    assert_difference('Paste.count') do
      post :create, :paste => { }
    end

    assert_redirected_to paste_path(assigns(:paste))
  end

  test "should show paste" do
    get :show, :id => pastes(:one).id
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => pastes(:one).id
    assert_response :success
  end

  test "should update paste" do
    put :update, :id => pastes(:one).id, :paste => { }
    assert_redirected_to paste_path(assigns(:paste))
  end

  test "should destroy paste" do
    assert_difference('Paste.count', -1) do
      delete :destroy, :id => pastes(:one).id
    end

    assert_redirected_to pastes_path
  end
end
