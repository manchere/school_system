require 'rails_helper'

RSpec.describe PasswordController, type: :controller do

  describe "GET #reset" do
    it "returns http success" do
      get :reset
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #forgot" do
    it "returns http success" do
      get :forgot
      expect(response).to have_http_status(:success)
    end
  end

end
