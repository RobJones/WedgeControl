require 'test_helper'

class QueryableObjectsControllerTest < ActionController::TestCase
  setup do
    @queryable_object = queryable_objects(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:queryable_objects)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create queryable_object" do
    assert_difference('QueryableObject.count') do
      post :create, queryable_object: { description: @queryable_object.description, name: @queryable_object.name }
    end

    assert_redirected_to queryable_object_path(assigns(:queryable_object))
  end

  test "should show queryable_object" do
    get :show, id: @queryable_object
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @queryable_object
    assert_response :success
  end

  test "should update queryable_object" do
    patch :update, id: @queryable_object, queryable_object: { description: @queryable_object.description, name: @queryable_object.name }
    assert_redirected_to queryable_object_path(assigns(:queryable_object))
  end

  test "should destroy queryable_object" do
    assert_difference('QueryableObject.count', -1) do
      delete :destroy, id: @queryable_object
    end

    assert_redirected_to queryable_objects_path
  end
end
