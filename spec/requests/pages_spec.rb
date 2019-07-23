require 'rails_helper'

RSpec.describe "the home page", type: :request do
  describe "GET /" do
    it "should load OK" do
      get root_path
      response.should have_http_status(200)
    end
  end
end
