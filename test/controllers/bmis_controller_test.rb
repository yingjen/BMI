require 'test_helper'

class BmisControllerTest < ActionController::TestCase
  setup do
    @bmi = bmis(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bmis)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bmi" do
    assert_difference('Bmi.count') do
      post :create, bmi: { height: @bmi.height, name: @bmi.name, weight: @bmi.weight }
    end

    assert_redirected_to bmi_path(assigns(:bmi))
  end

  test "should show bmi" do
    get :show, id: @bmi
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bmi
    assert_response :success
  end

  test "should update bmi" do
    patch :update, id: @bmi, bmi: { height: @bmi.height, name: @bmi.name, weight: @bmi.weight }
    assert_redirected_to bmi_path(assigns(:bmi))
  end

  test "should destroy bmi" do
    assert_difference('Bmi.count', -1) do
      delete :destroy, id: @bmi
    end

    assert_redirected_to bmis_path
  end
end
