Chair.delete_all
User.delete_all

c1 = Chair.create(:name => 'chair', :description => 'Ikea', :address => '12 main st, san francisco, ca', :image => 'http://www.ikea.com/us/en/images/products/torkel-swivel-chair__0121244_PE277975_S4.JPG')
c2 = Chair.create(:name => 'table', :description => 'Great condition', :address => '1245 taco st, san francisco, ca', :image => 'http://static4.businessinsider.com/image/511bd1346bb3f7b973000013-1076-396/screen%20shot%202013-02-13%20at%2012.09.18%20pm.png')

tim = User.create(:email "tim.garcia@generalassemb.ly", :password "password123", :password_confirmation "password123")
rafi = User.create(:email => "rafi.sofaer@generalassemb.ly", :password => "asdasd", :password_confirmation => "asdasd")

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
