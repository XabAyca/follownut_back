require 'rails_helper'

describe Api::V1::PatientsController, type: :request do

  let (:patient) { create_patient }

  context 'When fetching a patient' do
    before do
      login_patient_with_api(patient)
      get "/api/v1/patients/#{patient.id}", headers: {
        'Authorization': response.headers['Authorization']
      }
    end

    it 'returns 200' do
      expect(response.status).to eq(200)
    end

    it 'returns the patient' do
      expect(json['id']).to eq(patient.id)
    end
  end

  context 'When a patient is missing' do
    before do
      login_patient_with_api(patient)
      get "/api/v1/patients/blank", headers: {
        'Authorization': response.headers['Authorization']
      }
    end

    it 'returns 404' do
      expect(response.status).to eq(404)
    end
  end


end