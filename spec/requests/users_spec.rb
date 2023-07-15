require 'rails_helper'

RSpec.describe "Users", type: :request do
  describe "GET /users" do
    it "renders the index template" do
      get '/users/'
      expect(response).to have_http_status(:ok)
      expect(response.body).to include('Dazzle')
    end

    it 'sign_in succesfully' do
      get new_user_session_path
      expect(response).to have_http_status(200)
    end

    it 'sign_up succesfully' do
      get new_user_registration_path
      expect(response).to have_http_status(200)
    end
  end

end
