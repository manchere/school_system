require 'test_helper'

class ClassroomsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @classroom = classrooms(:one)
  end

  test "should get index" do
    get classrooms_url
    assert_response :success
  end

  test "should get new" do
    get new_classroom_url
    assert_response :success
  end

  test "should create classroom" do
    assert_difference('Classroom.count') do
      post classrooms_url, params: { classroom: { class_name: @classroom.class_name, class_type: @classroom.class_type, date_from: @classroom.date_from, date_to: @classroom.date_to } }
    end

    assert_redirected_to classroom_url(Classroom.last)
  end

  test "should show classroom" do
    get classroom_url(@classroom)
    assert_response :success
  end

  test "should get edit" do
    get edit_classroom_url(@classroom)
    assert_response :success
  end

  test "should update classroom" do
    patch classroom_url(@classroom), params: { classroom: { class_name: @classroom.class_name, class_type: @classroom.class_type, date_from: @classroom.date_from, date_to: @classroom.date_to } }
    assert_redirected_to classroom_url(@classroom)
  end

  test "should destroy classroom" do
    assert_difference('Classroom.count', -1) do
      delete classroom_url(@classroom)
    end

    assert_redirected_to classrooms_url
  end
end
