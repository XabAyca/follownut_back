require 'rails_helper'
require 'devise/jwt/test_helpers'

describe Api::V1::LogbooksController, type: :request do

  let (:patient) { create_patient }
  
  context 'When GET all logbooks' do
    before do
      create_patient()
      create_logbooks()
    end

    it "return all logbooks" do
      get "/api/v1/logbooks"
      expect(response).to have_http_status(:success)
      expect(JSON.parse(response.body).size).to eq(1)
    end

    it "return all logbooks" do
      get "/api/v1/logbooks/#{Logbook.all.sample.id}"
      expect(response).to have_http_status(:success)
      expect(JSON.parse(response.body).size).to eq(7)
    end
  end

  context 'When CREATE / POST a new logbook' do
    before do
      login_patient_with_api(patient)
    end

    it "return a created logbook" do
      headers = { 'Content-Type' => 'application/json' }
      # This will add a valid token for `user` in the `Authorization` header
      auth_headers = Devise::JWT::TestHelpers.auth_headers(headers, patient)

      post '/api/v1/logbooks', headers: auth_headers, params:{
        logbook: {
          patient_id: Patient.all.sample.id,
          title: "Title",
          content: "blablabla",
          is_shared: false
        }
      }.to_json

      expect(response).to have_http_status(:success)
      expect(JSON.parse(response.body).size).to eq(7)
    end
  end

  context 'When UPDATE a logbook' do
    before do
      create_patient()
      FactoryBot.create(:logbook,
        patient_id:Patient.all.sample.id,
        title:"Title blabla",
        content:"content",
        is_shared: true
      )
    end

    it "return an update logbook" do
      headers = { 'Content-Type' => 'application/json' }
      # This will add a valid token for `user` in the `Authorization` header
      auth_headers = Devise::JWT::TestHelpers.auth_headers(headers, Patient.last)

      put "/api/v1/logbooks/#{Logbook.last.id}", headers: auth_headers, params:{
        logbook: {
          title:"updated title",
          content:"updated content",
          is_shared: false
        }
      }.to_json

      expect(response).to have_http_status(:success)
      expect(JSON.parse(response.body).size).to eq(7)
    end
  end

  context 'When DELETE an logbook' do
    before do
      create_patient()
      create_logbooks()
    end

    it "return nothing" do
      headers = { 'Content-Type' => 'application/json' }
      # This will add a valid token for `user` in the `Authorization` header
      auth_headers = Devise::JWT::TestHelpers.auth_headers(headers, Patient.last)

      delete "/api/v1/logbooks/#{Logbook.last.id}", headers: auth_headers

      expect(response).to have_http_status(:success)
    end
  end
end