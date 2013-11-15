require 'test_helper'

class FileContainersControllerTest < ActionController::TestCase
  setup do
    @file_container = file_containers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:file_containers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create file_container" do
    assert_difference('FileContainer.count') do
      post :create, file_container: { description: @file_container.description, name: @file_container.name }
    end

    assert_redirected_to file_container_path(assigns(:file_container))
  end

  test "should show file_container" do
    get :show, id: @file_container
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @file_container
    assert_response :success
  end

  test "should update file_container" do
    put :update, id: @file_container, file_container: { description: @file_container.description, name: @file_container.name }
    assert_redirected_to file_container_path(assigns(:file_container))
  end

  test "should destroy file_container" do
    assert_difference('FileContainer.count', -1) do
      delete :destroy, id: @file_container
    end

    assert_redirected_to file_containers_path
  end
end
