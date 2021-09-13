require 'rails_helper'

describe SessionsController, type: :request do

  let (:patient) { create_patient }
  let (:login_url) { '/api/patient/login' }
  let (:logout_url) { '/api/patient/logout' }
  let (:nutritionist) { create_nutritionist }
  let (:login_nutritionist_url) { '/api/nutritionist/login' }
  let (:logout_nutritionist_url) { '/api/nutritionist/logout' }

  context 'When patient logging in' do
    before do
      login_patient_with_api(patient)
    end

    it 'returns a token' do
      expect(response.headers['Authorization']).to be_present
    end

    it 'returns 200' do
      expect(response.status).to eq(200)
    end
  end

  context 'When patient password is missing' do
    before do
      post login_url, params: {
        patient: {
          email: patient.email,
          password: nil
        }
      }
    end

    it 'returns 401' do
      expect(response.status).to eq(401)
    end

  end

  context 'When nutritionist logging out' do
    it 'returns 204' do
      delete logout_nutritionist_url

      expect(response).to have_http_status(204)
    end
  end

    context 'When nutritionist logging in' do
    before do
      login_nutritionist_with_api(nutritionist)
    end

    it 'returns a token' do
      expect(response.headers['Authorization']).to be_present
    end

    it 'returns 200' do
      expect(response.status).to eq(200)
    end
  end

  context 'When nutritionist password is missing' do
    before do
      post login_url, params: {
        nutritionist: {
          email: nutritionist.email,
          password: nil
        }
      }
    end

    it 'returns 401' do
      expect(response.status).to eq(401)
    end

  end

  context 'When nutritionist logging out' do
    it 'returns 204' do
      delete logout_nutritionist_url

      expect(response).to have_http_status(204)
    end
  end

end