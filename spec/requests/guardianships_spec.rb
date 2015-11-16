require 'rails_helper'

RSpec.describe "Guardianships", type: :request do
  describe "GET /guardianships" do
    it "works! (now write some real specs)" do
      get guardianships_path
      expect(response).to have_http_status(200)
    end
  end
end
