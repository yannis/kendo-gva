require 'rails_helper'

RSpec.describe "Robots", type: :request do
  describe "GET /robots.txt" do
    context "production" do
      before {stub_const('ENV', {'ROBOTS' => 'allow'})}
      it "allows" do
        get "/robots.txt"
        expect(response).to have_http_status(200)
        expect(response.body).to match "Disallow: /admin"
      end
    end
    context "other envs" do
      before {stub_const('ENV', {'ROBOTS' => 'disallow'})}
      it "disallows" do
        get "/robots.txt"
        expect(response).to have_http_status(200)
        expect(response.body).to match "Disallow: /"
      end
    end
  end
end
