require 'test_helper'

class ClassInfosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @class_info = class_infos(:one)
  end

  test "should get index" do
    get class_infos_url
    assert_response :success
  end

  test "should get new" do
    get new_class_info_url
    assert_response :success
  end

  test "should create class_info" do
    assert_difference('ClassInfo.count') do
      post class_infos_url, params: { class_info: { address: @class_info.address, available_classes: @class_info.available_classes, class_name: @class_info.class_name, contact_no: @class_info.contact_no, subjects: @class_info.subjects } }
    end

    assert_redirected_to class_info_url(ClassInfo.last)
  end

  test "should show class_info" do
    get class_info_url(@class_info)
    assert_response :success
  end

  test "should get edit" do
    get edit_class_info_url(@class_info)
    assert_response :success
  end

  test "should update class_info" do
    patch class_info_url(@class_info), params: { class_info: { address: @class_info.address, available_classes: @class_info.available_classes, class_name: @class_info.class_name, contact_no: @class_info.contact_no, subjects: @class_info.subjects } }
    assert_redirected_to class_info_url(@class_info)
  end

  test "should destroy class_info" do
    assert_difference('ClassInfo.count', -1) do
      delete class_info_url(@class_info)
    end

    assert_redirected_to class_infos_url
  end
end
