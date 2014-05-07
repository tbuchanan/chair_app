require 'spec_helper'

describe Chair do
  
	describe 'chair' do
		it 'should not be empty' do
			chair = FactoryGirl.build(:chair, image: nil)
			chair.should_not be_valid
		end
	end  




end
