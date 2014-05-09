require 'spec_helper'

describe ChairsController do

	before(:each) do
		sign_out :current_user
		@chair = Chair.create(name: "desk", description: "nice!", address: "123 main st, sf, ca")
	end

	it "renders status 200(ok)" do
  	 	@chair = Chair.create
  	    get :index
  	    (expect(response.status).to eq(200))
  	    # expect(response).to render_template("route")
  	 	end
	
  	 it "renders the index template" do
  	    get :index
  	    expect(response).to render_template("index")
  	  end	


end
