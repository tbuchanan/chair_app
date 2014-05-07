require 'spec_helper'

describe User do
  pending "add some examples to (or delete) #{__FILE__}"

	describe 'email' do
		it 'should not be empty' do
			user = FactoryGirl.build(:user, email: nil)
			user.should_not be_valid
		end
	end  

	describe 'format' do
		it 'should be in email format' do
			user = FactoryGirl.build(:user, email: "fake_email")
			user.should_not be_valid
		end
	end

	describe 'uniqueness' do
		it 'should be unique' do
			user_1 = user = FactoryGirl.create(:user)
			user_2 = user = FactoryGirl.build(:user, email: "user_1.email")
			user_2.should_not be_valid

		end
	end

end
