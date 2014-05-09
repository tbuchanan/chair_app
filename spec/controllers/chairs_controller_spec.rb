require 'spec_helper'

describe ChairsController do

	before(:each) do
		@chair = Chair.create(name: "desk", description: "nice!", address: "123 main st, sf, ca", image: "chair.jpg")
	end
end
