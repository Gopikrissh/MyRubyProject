require 'rails_helper'

RSpec.describe "PlayerTryouts", type: :request do
  describe "GET /player_tryouts" do
    it "works! (now write some real specs)" do
      get player_tryouts_path
      expect(response).to have_http_status(200)
    end
  end
end
