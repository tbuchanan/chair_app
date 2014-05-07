# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
 
	sequence :email do |n|
		"tyler#{n}@test.com"
	end


	factory :user do
  		email
  		password "password123"
  		#confirmation MUST match password(duh!)
  		password_confirmation "password123"
	end

end