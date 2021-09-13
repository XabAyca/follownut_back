require 'rails_helper'

describe RegistrationsController, type: :request do

  let (:patient) { build_patient }
  let (:existing_patient) { create_patient }
  let (:nutritionist) { build_nutritionist }
  let (:existing_nutritionist) { create_nutritionist }
  let (:signup_url_patient) { '/api/patient/signup' }
  let (:signup_url_nutritionist) { '/api/nutritionist/signup' }

  context 'When creating a new patient' do
    
    before do
      post signup_url_patient, params: {
        patient: {
          email: patient.email,
          password: patient.password,
          password_confirmation: patient.password_confirmation
        }
      }
    end

    it 'returns 200' do
      expect(response.status).to eq(200)
    end

    it 'returns a token' do
      expect(response.headers['Authorization']).to be_present
    end

    it 'returns the patient email' do
      expect(json['data']).to have_attribute(:email).with_value(patient.email)
    end
  end

  context 'When an email already exists' do

    before do
      post signup_url_patient, params: {
        patient: {
          email: existing_patient.email,
          password: existing_patient.password,
          password_confirmation: existing_patient.password
        }
      }
    end

    it 'returns 400' do
      expect(response.status).to eq(400)
    end
  end

  context 'When creating a new nutritionist' do
    
    before do
      post signup_url_nutritionist, params: {
        nutritionist: {
            first_name:nutritionist.first_name,
            last_name:nutritionist.last_name,
            phone_number:nutritionist.phone_number,
            api_key:nutritionist.api_key,
            slug_calendly: nutritionist.slug_calendly,
            email: nutritionist.email, 
            password: nutritionist.password,
            password_confirmation: nutritionist.password_confirmation
        }
      }
    end

    it 'returns 200' do
      expect(response.status).to eq(200)
    end

    it 'returns a token' do
      expect(response.headers['Authorization']).to be_present
    end

    it 'returns the nutritionist email' do
      expect(json['data']).to have_attribute(:email).with_value(nutritionist.email)
    end
  end

  context 'When an email already exists' do
    
    before do
      post signup_url_nutritionist, params: {
        nutritionist: {
            first_name:existing_nutritionist.first_name,
            last_name:existing_nutritionist.last_name,
            phone_number:existing_nutritionist.phone_number,
            api_key:existing_nutritionist.api_key,
            slug_calendly: existing_nutritionist.slug_calendly,
            email: existing_nutritionist.email, 
            password: existing_nutritionist.password,
            password_confirmation: existing_nutritionist.password_confirmation
        }
      }
    end

    it 'returns 400' do
      expect(response.status).to eq(400)
    end
  end

end