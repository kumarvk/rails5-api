require 'rails_helper'

RSpec.describe "PageContents", type: :request do
  describe "GET /page_contents" do
    it "works! (now write some real specs)" do
      get page_contents_path
      expect(response).to have_http_status(200)
    end
  end
end
