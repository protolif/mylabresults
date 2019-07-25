require 'rails_helper'

RSpec.describe "Patients", type: :request do
  describe "GET /patients" do
    it "should load OK" do
      get patients_path
      response.should have_http_status(200)
    end
  end
end
