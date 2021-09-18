require 'rails_helper'

describe Api::V1::NutritionistsController, type: :request do

  let (:nutritionist) { create_nutritionist }

  context 'When fetching a nutritionist' do
    before do
      login_nutritionist_with_api(nutritionist)
      get "/api/v1/nutritionists/#{nutritionist.id}", headers: {
        'Authorization': response.headers['Authorization']
      }
    end

    it 'returns 200' do
      expect(response.status).to eq(200)
    end

    it 'returns the nutritionist' do
      expect(json['id']).to eq(nutritionist.id)
    end
  end

  context 'When a nutritionist is missing' do
    before do
      login_nutritionist_with_api(nutritionist)
      get "/api/v1/nutritionists/blank", headers: {
        'Authorization': response.headers['Authorization']
      }
    end

    it 'returns 404' do
      expect(response.status).to eq(404)
    end
  end


end