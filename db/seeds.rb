#Chair.delete_all

c1 = Chair.create(:name => 'chair', :description => 'Ikea', :address => '12 main st, san francisco, ca', :image => 'http://www.ikea.com/us/en/images/products/torkel-swivel-chair__0121244_PE277975_S4.JPG')
c2 = Chair.create(:name => 'table', :description => 'unknown', :image => 'http://static4.businessinsider.com/image/511bd1346bb3f7b973000013-1076-396/screen%20shot%202013-02-13%20at%2012.09.18%20pm.png')

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
