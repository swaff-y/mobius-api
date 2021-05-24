require "test_helper"

class PatientsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @patient = patients(:one)
  end

  test "should get index" do
    get patients_url, as: :json
    assert_response :success
  end

  test "should create patient" do
    assert_difference('Patient.count') do
      post patients_url, params: { patient: { consent: @patient.consent, first_name: @patient.first_name, last_name: @patient.last_name, mobile_number: @patient.mobile_number, procedure_start_date: @patient.procedure_start_date, program_status: @patient.program_status, referring_clinician: @patient.referring_clinician, response_status: @patient.response_status, return_patient: @patient.return_patient, status: @patient.status, team_member_id: @patient.team_member_id } }, as: :json
    end

    assert_response 201
  end

  test "should show patient" do
    get patient_url(@patient), as: :json
    assert_response :success
  end

  test "should update patient" do
    patch patient_url(@patient), params: { patient: { consent: @patient.consent, first_name: @patient.first_name, last_name: @patient.last_name, mobile_number: @patient.mobile_number, procedure_start_date: @patient.procedure_start_date, program_status: @patient.program_status, referring_clinician: @patient.referring_clinician, response_status: @patient.response_status, return_patient: @patient.return_patient, status: @patient.status, team_member_id: @patient.team_member_id } }, as: :json
    assert_response 200
  end

  test "should destroy patient" do
    assert_difference('Patient.count', -1) do
      delete patient_url(@patient), as: :json
    end

    assert_response 204
  end
end
