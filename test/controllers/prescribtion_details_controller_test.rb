require 'test_helper'

class PrescribtionDetailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @prescribtion_detail = prescribtion_details(:one)
  end

  test "should get index" do
    get prescribtion_details_url
    assert_response :success
  end

  test "should get new" do
    get new_prescribtion_detail_url
    assert_response :success
  end

  test "should create prescribtion_detail" do
    assert_difference('PrescribtionDetail.count') do
      post prescribtion_details_url, params: { prescribtion_detail: { medication_id: @prescribtion_detail.medication_id, prescribtion_id: @prescribtion_detail.prescribtion_id } }
    end

    assert_redirected_to prescribtion_detail_url(PrescribtionDetail.last)
  end

  test "should show prescribtion_detail" do
    get prescribtion_detail_url(@prescribtion_detail)
    assert_response :success
  end

  test "should get edit" do
    get edit_prescribtion_detail_url(@prescribtion_detail)
    assert_response :success
  end

  test "should update prescribtion_detail" do
    patch prescribtion_detail_url(@prescribtion_detail), params: { prescribtion_detail: { medication_id: @prescribtion_detail.medication_id, prescribtion_id: @prescribtion_detail.prescribtion_id } }
    assert_redirected_to prescribtion_detail_url(@prescribtion_detail)
  end

  test "should destroy prescribtion_detail" do
    assert_difference('PrescribtionDetail.count', -1) do
      delete prescribtion_detail_url(@prescribtion_detail)
    end

    assert_redirected_to prescribtion_details_url
  end
end
