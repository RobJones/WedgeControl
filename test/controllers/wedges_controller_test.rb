require 'test_helper'

class WedgesControllerTest < ActionController::TestCase
  setup do
    @wedge = wedges(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:wedges)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create wedge" do
    assert_difference('Wedge.count') do
      post :create, wedge: { description: @wedge.description, input_type: @wedge.input_type, output_type: @wedge.output_type, title: @wedge.title }
    end

    assert_redirected_to wedge_path(assigns(:wedge))
  end

  test "should show wedge" do
    get :show, id: @wedge
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @wedge
    assert_response :success
  end

  test "should update wedge" do
    patch :update, id: @wedge, wedge: { description: @wedge.description, input_type: @wedge.input_type, output_type: @wedge.output_type, title: @wedge.title }
    assert_redirected_to wedge_path(assigns(:wedge))
  end

  test "should destroy wedge" do
    assert_difference('Wedge.count', -1) do
      delete :destroy, id: @wedge
    end

    assert_redirected_to wedges_path
  end
end
