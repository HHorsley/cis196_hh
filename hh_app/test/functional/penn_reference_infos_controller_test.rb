require 'test_helper'

class PennReferenceInfosControllerTest < ActionController::TestCase
  setup do
    @penn_reference_info = penn_reference_infos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:penn_reference_infos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create penn_reference_info" do
    assert_difference('PennReferenceInfo.count') do
      post :create, penn_reference_info: { department: @penn_reference_info.department, instructor_firstname: @penn_reference_info.instructor_firstname, instructor_lastname: @penn_reference_info.instructor_lastname }
    end

    assert_redirected_to penn_reference_info_path(assigns(:penn_reference_info))
  end

  test "should show penn_reference_info" do
    get :show, id: @penn_reference_info
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @penn_reference_info
    assert_response :success
  end

  test "should update penn_reference_info" do
    put :update, id: @penn_reference_info, penn_reference_info: { department: @penn_reference_info.department, instructor_firstname: @penn_reference_info.instructor_firstname, instructor_lastname: @penn_reference_info.instructor_lastname }
    assert_redirected_to penn_reference_info_path(assigns(:penn_reference_info))
  end

  test "should destroy penn_reference_info" do
    assert_difference('PennReferenceInfo.count', -1) do
      delete :destroy, id: @penn_reference_info
    end

    assert_redirected_to penn_reference_infos_path
  end
end
