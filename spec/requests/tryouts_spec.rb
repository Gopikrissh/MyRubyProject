require 'rails_helper'

RSpec.describe "Tryouts", type: :request do
  describe "GET /tryouts" do
    it "works! (now write some real specs)" do
      get tryouts_path
      expect(response).to have_http_status(200)
    end
  end
end
