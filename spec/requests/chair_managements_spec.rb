require 'spec_helper'

describe "ChairManagements" do
  describe "GET /chairs" do
    it "should test 302 response" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get chairs_path
      response.status.should be(302)
    end
  end
end


describe "home#index" do
	describe "Get /"  do
		it "should be a 200 response" do
			get "/"
			response.status.should be(200)
		end
	end

end

