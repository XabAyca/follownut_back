require 'rails_helper'
require 'devise/jwt/test_helpers'

describe Api::V1::ArticlesController, type: :request do

  let (:nutritionist) { create_nutritionist }
  
  context 'When GET all articles' do
    before do
      create_nutritionist()
      create_articles()
    end

    it "return all articles" do
      get "/api/v1/articles"
      expect(response).to have_http_status(:success)
      expect(JSON.parse(response.body).size).to eq(1)
    end

    it "return all articles" do
      get "/api/v1/articles/#{Article.all.sample.id}"
      expect(response).to have_http_status(:success)
      expect(JSON.parse(response.body).size).to eq(7)
    end
  end

  context 'When CREATE / POST a new article' do
    before do
      login_nutritionist_with_api(nutritionist)
    end

    it "return a created article" do
      headers = { 'Content-Type' => 'application/json' }
      # This will add a valid token for `user` in the `Authorization` header
      auth_headers = Devise::JWT::TestHelpers.auth_headers(headers, nutritionist)

      post '/api/v1/articles', headers: auth_headers, params:{
        article: {
          nutritionist_id: Nutritionist.all.sample.id,
          title: "Title",
          content: "blablabla",
        }
      }.to_json

      expect(response).to have_http_status(:success)
      expect(JSON.parse(response.body).size).to eq(6)
    end
  end

  context 'When UPDATE an article' do
    before do
      create_nutritionist()
      FactoryBot.create(:article,
        nutritionist_id:Nutritionist.all.sample.id,
        title:"Title blabla",
        content:"content",
      )
    end

    it "return an update article" do
      headers = { 'Content-Type' => 'application/json' }
      # This will add a valid token for `user` in the `Authorization` header
      auth_headers = Devise::JWT::TestHelpers.auth_headers(headers, Nutritionist.last)

      put "/api/v1/articles/#{Article.last.id}", headers: auth_headers, params:{
        article: {
          title:"updated title",
          content:"updated content",
        }
      }.to_json

      expect(response).to have_http_status(:success)
      expect(JSON.parse(response.body).size).to eq(6)
    end
  end

  context 'When DELETE an article' do
    before do
      create_nutritionist()
      create_articles()
    end

    it "return nothing" do
      headers = { 'Content-Type' => 'application/json' }
      # This will add a valid token for `user` in the `Authorization` header
      auth_headers = Devise::JWT::TestHelpers.auth_headers(headers, Nutritionist.last)

      delete "/api/v1/articles/#{Article.last.id}", headers: auth_headers

      expect(response).to have_http_status(:success)
    end
  end
end