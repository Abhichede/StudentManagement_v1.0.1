require 'test_helper'

class PreStudentGarbagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pre_student_garbage = pre_student_garbages(:one)
  end

  test "should get index" do
    get pre_student_garbages_url
    assert_response :success
  end

  test "should get new" do
    get new_pre_student_garbage_url
    assert_response :success
  end

  test "should create pre_student_garbage" do
    assert_difference('PreStudentGarbage.count') do
      post pre_student_garbages_url, params: { pre_student_garbage: { academic_year_id: @pre_student_garbage.academic_year_id, allocated_fee: @pre_student_garbage.allocated_fee, balance_fee: @pre_student_garbage.balance_fee, fee_structure_id: @pre_student_garbage.fee_structure_id, paid_fee: @pre_student_garbage.paid_fee, student_id: @pre_student_garbage.student_id } }
    end

    assert_redirected_to pre_student_garbage_url(PreStudentGarbage.last)
  end

  test "should show pre_student_garbage" do
    get pre_student_garbage_url(@pre_student_garbage)
    assert_response :success
  end

  test "should get edit" do
    get edit_pre_student_garbage_url(@pre_student_garbage)
    assert_response :success
  end

  test "should update pre_student_garbage" do
    patch pre_student_garbage_url(@pre_student_garbage), params: { pre_student_garbage: { academic_year_id: @pre_student_garbage.academic_year_id, allocated_fee: @pre_student_garbage.allocated_fee, balance_fee: @pre_student_garbage.balance_fee, fee_structure_id: @pre_student_garbage.fee_structure_id, paid_fee: @pre_student_garbage.paid_fee, student_id: @pre_student_garbage.student_id } }
    assert_redirected_to pre_student_garbage_url(@pre_student_garbage)
  end

  test "should destroy pre_student_garbage" do
    assert_difference('PreStudentGarbage.count', -1) do
      delete pre_student_garbage_url(@pre_student_garbage)
    end

    assert_redirected_to pre_student_garbages_url
  end
end
