require 'rails_helper'

RSpec.describe "WouldYouRathers", type: :request do
  describe "GET /would_you_rathers" do
    it "works! (now write some real specs)" do
      get would_you_rathers_path
      expect(response).to have_http_status(200)
    end
  end
end
