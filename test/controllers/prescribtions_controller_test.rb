require 'test_helper'

class PrescribtionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @prescribtion = prescribtions(:one)
  end

  test "should get index" do
    get prescribtions_url
    assert_response :success
  end

  test "should get new" do
    get new_prescribtion_url
    assert_response :success
  end

  test "should create prescribtion" do
    assert_difference('Prescribtion.count') do
      post prescribtions_url, params: { prescribtion: { doctor_id: @prescribtion.doctor_id, patient_id: @prescribtion.patient_id } }
    end

    assert_redirected_to prescribtion_url(Prescribtion.last)
  end

  test "should show prescribtion" do
    get prescribtion_url(@prescribtion)
    assert_response :success
  end

  test "should get edit" do
    get edit_prescribtion_url(@prescribtion)
    assert_response :success
  end

  test "should update prescribtion" do
    patch prescribtion_url(@prescribtion), params: { prescribtion: { doctor_id: @prescribtion.doctor_id, patient_id: @prescribtion.patient_id } }
    assert_redirected_to prescribtion_url(@prescribtion)
  end

  test "should destroy prescribtion" do
    assert_difference('Prescribtion.count', -1) do
      delete prescribtion_url(@prescribtion)
    end

    assert_redirected_to prescribtions_url
  end
end
