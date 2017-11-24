require 'test_helper'

class FeeStructuresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fee_structure = fee_structures(:one)
  end

  test "should get index" do
    get fee_structures_url
    assert_response :success
  end

  test "should get new" do
    get new_fee_structure_url
    assert_response :success
  end

  test "should create fee_structure" do
    assert_difference('FeeStructure.count') do
      post fee_structures_url, params: { fee_structure: { allocated_fee: @fee_structure.allocated_fee, class: @fee_structure.class, section: @fee_structure.section } }
    end

    assert_redirected_to fee_structure_url(FeeStructure.last)
  end

  test "should show fee_structure" do
    get fee_structure_url(@fee_structure)
    assert_response :success
  end

  test "should get edit" do
    get edit_fee_structure_url(@fee_structure)
    assert_response :success
  end

  test "should update fee_structure" do
    patch fee_structure_url(@fee_structure), params: { fee_structure: { allocated_fee: @fee_structure.allocated_fee, class: @fee_structure.class, section: @fee_structure.section } }
    assert_redirected_to fee_structure_url(@fee_structure)
  end

  test "should destroy fee_structure" do
    assert_difference('FeeStructure.count', -1) do
      delete fee_structure_url(@fee_structure)
    end

    assert_redirected_to fee_structures_url
  end
end
