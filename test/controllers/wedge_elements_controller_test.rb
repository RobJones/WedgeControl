require 'test_helper'

class WedgeElementsControllerTest < ActionController::TestCase
  setup do
    @wedge_element = wedge_elements(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:wedge_elements)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create wedge_element" do
    assert_difference('WedgeElement.count') do
      post :create, wedge_element: {  }
    end

    assert_redirected_to wedge_element_path(assigns(:wedge_element))
  end

  test "should show wedge_element" do
    get :show, id: @wedge_element
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @wedge_element
    assert_response :success
  end

  test "should update wedge_element" do
    patch :update, id: @wedge_element, wedge_element: {  }
    assert_redirected_to wedge_element_path(assigns(:wedge_element))
  end

  test "should destroy wedge_element" do
    assert_difference('WedgeElement.count', -1) do
      delete :destroy, id: @wedge_element
    end

    assert_redirected_to wedge_elements_path
  end
end
