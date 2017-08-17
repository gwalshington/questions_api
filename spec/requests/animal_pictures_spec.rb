require 'rails_helper'

RSpec.describe "AnimalPictures", type: :request do
  describe "GET /animal_pictures" do
    it "works! (now write some real specs)" do
      get animal_pictures_path
      expect(response).to have_http_status(200)
    end
  end
end
