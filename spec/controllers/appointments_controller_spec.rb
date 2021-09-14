require 'rails_helper'
require 'devise/jwt/test_helpers'

describe Api::V1::AppointmentsController, type: :request do

  let (:patient) { create_patient }
  let (:nutritionist) { create_nutritionist }
  let (:token) { nutritionist.token}
  let (:appointments_url) { '/api/v1/properties' }
  
  context 'When GET all appointments' do
    before do
      login_patient_with_api(patient)
      create_patient()
      create_nutritionist()
      create_appointments()
    end

    it "return all appointments" do
      get "/api/v1/appointments"
      expect(response).to have_http_status(:success)
      expect(JSON.parse(response.body).size).to eq(1)
    end

    it "return all appointments" do
      get "/api/v1/appointments/#{Appointment.all.sample.id}"
      expect(response).to have_http_status(:success)
      expect(JSON.parse(response.body).size).to eq(13)
    end
  end

  context 'When CREATE / POST a new appointment' do
    before do
      login_nutritionist_with_api(nutritionist)
      create_patient()
      create_nutritionist()
    end

    it "return a create appointment" do
      headers = { 'Content-Type' => 'application/json' }
      # This will add a valid token for `user` in the `Authorization` header
      auth_headers = Devise::JWT::TestHelpers.auth_headers(headers, nutritionist)

      post '/api/v1/appointments', headers: auth_headers, params:{
        appointment: {
          patient_id:Patient.all.sample.id,
          nutritionist_id:Nutritionist.all.sample.id,
          date:"12/12/2021",
          content:"blablabla",
          height:1.8,
          weight:75,
          body_fat:30,
          visceral_fat:30,
          muscle_mass:30
        }
      }.to_json

      expect(response).to have_http_status(:success)
      expect(JSON.parse(response.body).size).to eq(13)
    end
  end

  context 'When UPDATE an appointment' do
    before do
      create_patient()
      create_nutritionist()
      FactoryBot.create(:appointment,
      patient_id:Patient.all.sample.id,
      nutritionist_id:Nutritionist.last.id,
      date:"12/12/2021",
      content:"blablabla",
      height:1.8,
      weight:75,
      body_fat:30,
      visceral_fat:30,
      muscle_mass:30
        )
    end

    it "return an update appointment" do
      headers = { 'Content-Type' => 'application/json' }
      # This will add a valid token for `user` in the `Authorization` header
      auth_headers = Devise::JWT::TestHelpers.auth_headers(headers, Nutritionist.last)

      put "/api/v1/appointments/#{Appointment.last.id}", headers: auth_headers, params:{
        appointment: {
          patient_id:Patient.all.sample.id,
          nutritionist_id:Nutritionist.all.sample.id,
          date:"12/12/2021",
          content:"blablabla",
          height:1.8,
          weight:75,
          body_fat:30,
          visceral_fat:30,
          muscle_mass:30
        }
      }.to_json

      expect(response).to have_http_status(:success)
      expect(JSON.parse(response.body).size).to eq(13)
    end
  end

  context 'When DELETE an appointment' do
    before do
      create_patient()
      create_nutritionist()
      FactoryBot.create(:appointment,
      patient_id:Patient.all.sample.id,
      nutritionist_id:Nutritionist.last.id,
      date:"12/12/2021",
      content:"blablabla",
      height:1.8,
      weight:75,
      body_fat:30,
      visceral_fat:30,
      muscle_mass:30
        )
    end

    it "return nothing" do
      headers = { 'Content-Type' => 'application/json' }
      # This will add a valid token for `user` in the `Authorization` header
      auth_headers = Devise::JWT::TestHelpers.auth_headers(headers, Nutritionist.last)

      delete "/api/v1/appointments/#{Appointment.last.id}", headers: auth_headers

      expect(response).to have_http_status(:success)
    end
  end
end